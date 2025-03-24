import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey[100],
        fontFamily: 'Roboto',
      ),
      home: CvScreen(),
    );
  }
}

class CvScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CV - Bùi Quốc Thắng"),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.tealAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with Avatar
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                      backgroundColor: Colors.teal.withOpacity(0.1),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Thiện Ngô Trung",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[800],
                    ),
                  ),
                  Text(
                    "Aspiring Cybersecurity Intern",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Thông tin cá nhân
            _buildInfoCard([
              _buildInfoSection("📍 Địa chỉ", "UIT, HCM"),
              _buildInfoSection("📧 Email", "21522584@gm.uit.edu.vn"),
              _buildInfoSection("📞 Số điện thoại", "123456789"),
            ]),
            SizedBox(height: 10),
            _buildSocialMediaLinks(),

            _buildDivider(),
            _buildSectionTitle("🎯 Mục tiêu nghề nghiệp"),
            _buildContentCard(
              Text(
                "Eager to leverage academic knowledge and project experience to contribute to cybersecurity. Passionate about risk assessment, IAM, and DevOps.",
                style: TextStyle(fontSize: 14, color: Colors.grey[800]),
              ),
            ),

            _buildDivider(),
            _buildSectionTitle("🔧 Kỹ năng"),
            _buildContentCard(
              _buildBulletPoints([
                "Good communication (English & Vietnamese)",
                "Adaptability, critical thinking, problem-solving",
                "Eagerness to learn new technologies",
                "Programming: Python, JavaScript, PHP, SQL",
                "Web: MERN Stack, Ant Design, HTML, CSS",
                "Databases: MySQL, MongoDB, Distributed Systems",
                "Cybersecurity: Kali Linux, Wireshark, Nmap, Password Cracking",
                "REST API, Data Visualization, Encryption Algorithms",
              ]),
            ),

            _buildDivider(),
            _buildSectionTitle("💼 Kinh nghiệm làm việc"),
            _buildContentCard(
              Column(
                children: [
                  _buildExperience(
                    "Cybersecurity Intern",
                    "July 2024 - Nov 2024",
                    [
                      "Conducted network vulnerability assessments using Kali Linux.",
                      "Explored security flaws on virtual machines (rootthis.ova).",
                      "Used nmap, Wireshark, password cracking tools for penetration testing.",
                      "Recommended security enhancements.",
                    ],
                  ),
                  SizedBox(height: 10),
                  _buildExperience(
                    "PHP Security Project",
                    "July 2024 - Nov 2024",
                    [
                      "Developed an educational site demonstrating broken authentication vulnerabilities.",
                      "Implemented session management, password hashing, SQL injection protection.",
                      "Showcased secure coding practices.",
                    ],
                  ),
                  SizedBox(height: 10),
                  _buildExperience(
                    "Frontend Developer - Nutrition Website",
                    "June 2024 - Oct 2024",
                    [
                      "Designed a personalized health app with React.js.",
                      "Created a dynamic onboarding process with popups.",
                      "Integrated with backend API for user authentication & data storage.",
                    ],
                  ),
                ],
              ),
            ),

            _buildDivider(),
            _buildSectionTitle("🎓 Học vấn"),
            _buildContentCard(
              _buildInfoSection(
                "University of Information Technology (UIT)",
                "Data Engineering (Oct 2021 - Aug 2025)",
              ),
            ),

            _buildDivider(),
            _buildSectionTitle("📜 Chứng chỉ"),
            _buildContentCard(
              _buildBulletPoints([
                "AWS Academy Cloud Foundations (Dec 2024)",
                "Google Data Analytics Pro Certificate (Oct 2024)",
                "Google AI Essentials (July 2024)",
                "Ranked First in English Speech Contest (May 2024)",
              ]),
            ),

            _buildDivider(),
            _buildSectionTitle("🎭 Hoạt động ngoại khóa"),
            _buildContentCard(
              _buildExperience(
                "English Tech Club Member",
                "Jan 2015 - Jan 2016",
                [
                  "Participated in weekly meetings, guided troubleshooting workshops.",
                  "Worked on group projects to improve campus IT infrastructure.",
                ],
              ),
            ),

            _buildDivider(),
            _buildSectionTitle("💡 Sở thích"),
            _buildContentCard(
              _buildBulletPoints([
                "Playing chess online",
                "Hitting the gym",
                "Exploring social networks",
                "Keeping up with tech & social news on VnExpress",
              ]),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection(String title, String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.info_outline, size: 20, color: Colors.teal),
          SizedBox(width: 10),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$title: ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[700],
                    ),
                  ),
                  TextSpan(
                    text: info,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.teal[800],
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Divider(
              thickness: 2,
              color: Colors.teal.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoints(List<String> points) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: points
          .map((point) => Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.circle, size: 8, color: Colors.teal),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        point,
                        style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                      ),
                    ),
                  ],
                ),
              ))
          .toList(),
    );
  }

  Widget _buildExperience(String title, String duration, List<String> details) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.teal[700],
            ),
          ),
          Text(
            duration,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 5),
          _buildBulletPoints(details),
        ],
      ),
    );
  }

  Widget _buildSocialMediaLinks() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.link, color: Colors.teal),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.facebook, color: Colors.teal),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.code, color: Colors.teal),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Divider(
        thickness: 1,
        color: Colors.grey.withOpacity(0.3),
      ),
    );
  }

  Widget _buildContentCard(Widget content) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 5,
          ),
        ],
      ),
      child: content,
    );
  }

  Widget _buildInfoCard(List<Widget> children) {
    return _buildContentCard(Column(children: children));
  }
}