class Blocker{
  float m_x;
  float m_y;
  float m_width;
  float m_height;
  float m_time;

  PVector m_dir;
  PVector m_vel;
  PVector m_acc;

  Blocker(){
    m_x = 0.0;
    m_y = 0.0;
    m_width = 20.0;
    m_height = 15.0;
    m_dir = new PVector(1,0);
    m_vel = new PVector(5,0);
    m_acc = new PVector(0,0);
    m_time = 0.0;
  }
  Blocker(int x, int y){
    m_x = x;
    m_y = y;
    m_width = 20.0;
    m_height = 15.0;
    m_dir = new PVector(1,0);
    m_vel = new PVector(random(15,30),0);
    m_acc = new PVector(0,0);
    m_time = 0.0;

  }

  void update(float dt){
    m_vel.add(m_acc);
    if(random(1) > 0.98){
      m_vel.add(int(random(-15,15)),0);
    }
    if(random(1) > 0.995){
      m_vel.x = -m_vel.x;
    }
    if(m_x >= width - m_width || m_x <= 0){
      m_vel.x = - m_vel.x;
    }
    m_x += m_vel.x * getDeltaTime();
    m_y += m_vel.y * getDeltaTime();
    m_time += dt;
  }

  void draw(){
    pushStyle();
    fill(200,0,0);
    rect(m_x,m_y,m_width,m_height);
    popStyle();
  }
}
