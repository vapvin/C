// Comment

//Login

char *getlogin(void);
char *cuserid(char *s);

// etc..

// shadow

struct spwe *getspname(const char *name);
struct spwd *getspent(void);
void setsent(void);
void endspent(void);

// Time

time_t time(time_t *tloc);