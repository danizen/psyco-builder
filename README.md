![AWS CodeBuild badge](https://codebuild.us-east-1.amazonaws.com/badges?uuid=eyJlbmNyeXB0ZWREYXRhIjoiS0J6TEU3VFJEVVArOEFjQThSaG5KUWlseDV1RzQ3ZVd5eUlBbDlzNHhVWWl2U2xhRzVPcktkVGE5aDJrQ2JpV3NuVUp5bk5pM3MrVG1lMkpjTnlBN1JnPSIsIml2UGFyYW1ldGVyU3BlYyI6InBuWTAvNUpXOS9zREJybXciLCJtYXRlcmlhbFNldFNlcmlhbCI6MX0%3D&branch=master)

# psycopg-builder

## Summary

Reproduces the algorithm described in [awslambda-psycopg2](https://github.com/jkehler/awslambda-psycopg2) as a couple
of scripts tied together with AWS CodeBuild, in order to build in an Amazon Linux 2 environment.

## Environment Variables

The scripts expect the following environment variables:

- `POSTGRESQL_VERSION` - the version of postgresql to use
- `PSCYCOPG2_VERSION` - they use whichever version of 

## Scripts

| Script | Reponsibility | 
|--------|---------------| 
| `download.sh` | Download and expand Postgresql and Psycopg2 tarball |
| `build_postgres.sh` | configure, make, and install postgresql |
| `build_psycopg2.sh` | build a static wheel for psycopg2 |

