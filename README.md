# Spots API

A RESTful API built with Ruby on Rails for managing spots (locations/venues) and their reviews. This application provides endpoints to create, read, update, and delete spots and associated reviews with ratings.

## 🚀 Features

- **Spots Management**: Create, view, update, and delete spots with title, description, and pricing information
- **Reviews System**: Add and manage reviews for spots with content and ratings (1-5 scale)
- **Image Support**: Upload and manage multiple images per spot using Active Storage
- **RESTful API**: Clean, versioned API endpoints following REST conventions
- **Data Validation**: Comprehensive validation for all inputs
- **PostgreSQL Database**: Robust database support with proper relationships

## 🛠 Tech Stack

- **Ruby**: 3.1.1
- **Rails**: 6.1.7
- **Database**: PostgreSQL
- **Server**: Puma
- **Code Quality**: RuboCop for linting and code standards

## 📋 Prerequisites

Before you begin, ensure you have the following installed:

- Ruby 3.1.1
- PostgreSQL
- Bundler gem

## ⚡ Quick Start

### 1. Clone the repository
```bash
git clone <repository-url>
cd spots-api
```

### 2. Install dependencies
```bash
bundle install
```

### 3. Database setup
```bash
rails db:create
rails db:migrate
rails db:seed  # Optional: if seed data is available
```

### 4. Start the server
```bash
rails server
```

The API will be available at `http://localhost:3000`

## 📚 API Endpoints

### Spots
- `GET /api/v1/spots` - List all spots
- `GET /api/v1/spots/:id` - Get a specific spot
- `POST /api/v1/spots` - Create a new spot
- `PATCH/PUT /api/v1/spots/:id` - Update a spot
- `DELETE /api/v1/spots/:id` - Delete a spot

### Reviews
- `GET /api/v1/spots/:spot_id/reviews` - List reviews for a spot
- `GET /api/v1/spots/:spot_id/reviews/:id` - Get a specific review
- `POST /api/v1/spots/:spot_id/reviews` - Create a review for a spot
- `PATCH/PUT /api/v1/spots/:spot_id/reviews/:id` - Update a review
- `DELETE /api/v1/spots/:spot_id/reviews/:id` - Delete a review

## 🗃 Database Schema

### Spots Table
| Column | Type | Description |
|--------|------|-------------|
| `id` | Primary Key | Unique identifier |
| `title` | String | Spot name (required) |
| `description` | Text | Detailed description (required) |
| `price` | Decimal | Price information (required) |
| `created_at` | DateTime | Creation timestamp |
| `updated_at` | DateTime | Last update timestamp |

### Reviews Table
| Column | Type | Description |
|--------|------|-------------|
| `id` | Primary Key | Unique identifier |
| `content` | Text | Review content (required) |
| `rating` | Integer | Rating from 1-5 (required) |
| `spot_id` | Foreign Key | Associated spot ID |
| `created_at` | DateTime | Creation timestamp |
| `updated_at` | DateTime | Last update timestamp |

## 🧪 Testing

Run the test suite:
```bash
rails test
```

## 📝 Code Quality

This project uses RuboCop for maintaining code quality and consistency:

```bash
# Check code style
bundle exec rubocop

# Auto-correct issues
bundle exec rubocop -A
```

## 🚀 Deployment

### Environment Variables
Ensure the following environment variables are set in production:
- `DATABASE_URL` - PostgreSQL connection string
- `RAILS_ENV=production`
- `SECRET_KEY_BASE` - Rails secret key


### Production Setup
1. Precompile assets (if any): `rails assets:precompile`
2. Run database migrations: `rails db:migrate`
3. Start the server with your preferred method (Puma, Passenger, etc.)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📋 Development Guidelines

- Follow Ruby and Rails best practices
- Write tests for new features
- Run RuboCop before submitting PRs
- Use meaningful commit messages
- Update documentation for API changes

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

If you encounter any issues or have questions, please:
1. Check existing [Issues](../../issues)
2. Create a new issue with detailed information
3. Include steps to reproduce any bugs

---

Built with ❤️ using Ruby on Rails
