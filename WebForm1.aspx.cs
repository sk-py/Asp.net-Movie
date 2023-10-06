using System;
using System.Collections.Generic;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Backend
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        String cnStr;
        SqlConnection cn;

        public class Movie
        {
            public int m_id;
            public string m_name;
            //public string Description { get; set; }
            public string img_url;
            // Add other properties as needed
        }

        protected void Page_Load(object sender, EventArgs e)
        {

                cnStr = @"Server=DELL690\SQLEXPRESS;Database=booking;Integrated Security=True;";
                cn = new SqlConnection(cnStr);
                cn.Open();

                // Fetch movie data from the database
                List<Movie> movies = FetchMovieDataFromDatabase();

                // Loop through the movie data and generate movie cards
                foreach (Movie movie in movies)
                {
                    // Create a new HTML div element for each movie card
                    HtmlGenericControl movieCardDiv = new HtmlGenericControl("div");
                    movieCardDiv.Attributes["id"] = "img-wrapper";  
                    HtmlGenericControl movieCardSpan = new HtmlGenericControl("span");
                    HtmlGenericControl movieName = new HtmlGenericControl("p");
                    HtmlGenericControl detailsBtn = new HtmlGenericControl("button");
                    detailsBtn.Attributes["class"] = "dtbtn";
                    detailsBtn.Attributes["id"] = "dtbtn";
                    detailsBtn.Attributes["value"] =  movie.m_id.ToString();
                    
                    //movieCardSpan.Attributes["id"] = "card-text";

                    // Create an image element for the movie poster
                    Image moviePosterImage = new Image();
                    moviePosterImage.ImageUrl = "~/Images/" + movie.img_url;
                    movieName.InnerText = movie.m_name.ToString();
                    movieCardDiv.Controls.Add(moviePosterImage);
                    movieCardDiv.Controls.Add(movieCardSpan);
                    detailsBtn.InnerText = "View Details";
                    // Create labels, buttons, and other elements for movie details

                    // Add the movie card to the container
                    movieContainer.Controls.Add(movieCardDiv);
                    movieCardDiv.Controls.Add(movieCardSpan);
                    movieCardSpan.Controls.Add(movieName);
                    movieCardSpan.Controls.Add(detailsBtn);
                }

                // Close the database connection
                cn.Close();
            
        }

        private List<Movie> FetchMovieDataFromDatabase()
        {
            List<Movie> movies = new List<Movie>();

          
            SqlCommand command = new SqlCommand("SELECT * FROM Movies", cn);
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Movie movie = new Movie();
                if (!reader.IsDBNull(0))
                {
                    movie.m_id = reader.GetInt32(0);
                }
                if (!reader.IsDBNull(1))
                {
                    movie.m_name = reader.GetString(1);
                }
                if (!reader.IsDBNull(2))
                {
                    movie.img_url = reader.GetString(2);
                }
                movies.Add(movie);
            }

            reader.Close();
            return movies;
        }
    }
}
