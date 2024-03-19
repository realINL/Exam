//////
//////  ViewController.swift
//////  Exam
//////
//////  Created by Артем Тиманов on 19.03.2024.
//////
////



import UIKit
import MapKit

class DeveloperInfoViewController: UIViewController {
        let mapView: MKMapView = {
        let control = MKMapView()
        control.layer.cornerRadius = 15
        control.layer.masksToBounds = true
        control.clipsToBounds = false
        control.translatesAutoresizingMaskIntoConstraints = false
        control.showsScale = true
        control.showsCompass = true
        control.showsTraffic = true
        control.showsBuildings = true
        control.showsUserLocation = true
        return control
    }()
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Установка цветa
        view.backgroundColor = .white
        
        
        
        configureUI()
    }
        

            
    
    // Функция добавления пина на карту
    func addPinToMap() {
            let geocoder = CLGeocoder()
        let addressString = "Москва, Кремль, 1"
            
            // Геокодирование адреса в координаты
        geocoder.geocodeAddressString(addressString) { (placemarks, error) in
                guard let placemark = placemarks?.first, let location = placemark.location else {
                    print("Ошибка при определении координат")
                    return
                }
                
                // Создание аннотации с полученными координатами
                let annotation = MKPointAnnotation()
                annotation.coordinate = location.coordinate
            annotation.title = "INL"
                annotation.subtitle = addressString
                self.mapView.addAnnotation(annotation)
                
                // Показать пин на карте
                let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 10000, longitudinalMeters: 10000)
                self.mapView.setRegion(region, animated: true)
            }
        }
    
    
    // Функция открытия вебсайта
    @objc func openWebsite() {
        if let url = URL(string: "https://ya.ru") {
            UIApplication.shared.open(url)
        }
    }
    
    // Функция открытия телефона
    @objc func openTel() {
        if let url = URL(string: "tel:/88005553535") {
            UIApplication.shared.open(url)
        }
    }
    
    
    
    private func configureUI() {
        
        let title = UILabel(frame: CGRect(x: 100, y: 40, width: 235, height: 35))
        title.text = "О разработчиках:"
        title.font = UIFont(name: "AvenirNext-Bold", size: 25)
        self.view.addSubview(title)
        
        
        let companyNameLabel = UILabel(frame: CGRect(x: 30, y: 105, width: 135, height: 35))
        companyNameLabel.text = " Наше название:"
        companyNameLabel.backgroundColor = .black
        companyNameLabel.textColor = .white
        companyNameLabel.layer.cornerRadius = 10
        companyNameLabel.clipsToBounds = true
        self.view.addSubview(companyNameLabel)
        
        let companyAdressLabel = UILabel(frame: CGRect(x: 30, y: 145, width: 135, height: 35))
        companyAdressLabel.text = " Наш адрес:"
        companyAdressLabel.backgroundColor = .black
        companyAdressLabel.textColor = .white
        companyAdressLabel.layer.cornerRadius = 10
        companyAdressLabel.clipsToBounds = true
        self.view.addSubview(companyAdressLabel)
        
        let companyEmailLabel = UILabel(frame: CGRect(x: 30, y: 185, width: 135, height: 35))
        companyEmailLabel.text = " Наш e-mail:"
        companyEmailLabel.backgroundColor = .black
        companyEmailLabel.textColor = .white
        companyEmailLabel.layer.cornerRadius = 10
        companyEmailLabel.clipsToBounds = true
        self.view.addSubview(companyEmailLabel)
        
        let companyPhoneLabel = UILabel(frame: CGRect(x: 30, y: 225, width: 135, height: 35))
        companyPhoneLabel.text = " Наш телефон:"
        companyPhoneLabel.backgroundColor = .black
        companyPhoneLabel.textColor = .white
        companyPhoneLabel.layer.cornerRadius = 10
        companyPhoneLabel.clipsToBounds = true
        self.view.addSubview(companyPhoneLabel)
        
        let companyTgLabel = UILabel(frame: CGRect(x: 30, y: 265, width: 135, height: 35))
        companyTgLabel.text = " Наш telegram:"
        companyTgLabel.backgroundColor = .black
        companyTgLabel.textColor = .white
        companyTgLabel.layer.cornerRadius = 10
        companyTgLabel.clipsToBounds = true
        self.view.addSubview(companyTgLabel)
        
        let companyWebsiteLabel = UILabel(frame: CGRect(x: 30, y: 305, width: 135, height: 35))
        companyWebsiteLabel.text = " Наш сайт:"
        companyWebsiteLabel.backgroundColor = .black
        companyWebsiteLabel.textColor = .white
        companyWebsiteLabel.layer.cornerRadius = 10
        companyWebsiteLabel.clipsToBounds = true
        self.view.addSubview(companyWebsiteLabel)
        
        let companyName = UILabel(frame: CGRect(x: 175, y: 105, width:210, height: 35))
        companyName.backgroundColor = .systemGray6
        companyName.text = " INL LTD."
        companyName.layer.cornerRadius = 10
        companyName.clipsToBounds = true
        self.view.addSubview(companyName)
        
        let companyAdress = UILabel(frame: CGRect(x: 175, y: 145, width:210, height: 35))
        companyAdress.text = " Москва, улица Кремль, 1"
        companyAdress.backgroundColor = .systemGray6
        companyAdress.layer.cornerRadius = 10
        companyAdress.clipsToBounds = true
        self.view.addSubview(companyAdress)
        
        let companyMail = UILabel(frame: CGRect(x: 175, y: 185, width: 210, height: 35))
        companyMail.text = " mail@inl.com"
        companyMail.backgroundColor = .systemGray6
        companyMail.layer.cornerRadius = 10
        companyMail.clipsToBounds = true
        self.view.addSubview(companyMail)
        
        let companyWebsite = UILabel(frame: CGRect(x: 175, y: 305, width:210, height: 35))
        companyWebsite.text = " ya.ru"
        companyWebsite.backgroundColor = .systemGray6
        companyWebsite.layer.cornerRadius = 10
        companyWebsite.clipsToBounds = true
        view.addSubview(companyWebsite)
        companyWebsite.isUserInteractionEnabled = true
            
        
        
        let companyPhone = UILabel(frame: CGRect(x: 175, y: 225, width:210, height: 35))
        companyPhone.text = " 8(800)5553535"
        companyPhone.backgroundColor = .systemGray6
        companyPhone.layer.cornerRadius = 10
        companyPhone.clipsToBounds = true
        companyPhone.isUserInteractionEnabled = true
        
        let tapGestureTel = UITapGestureRecognizer(target: self, action: #selector(openTel))
        companyPhone.isUserInteractionEnabled = true
        companyPhone.addGestureRecognizer(tapGestureTel)
        self.view.addSubview(companyPhone)
        
        let companyTg = UILabel(frame: CGRect(x: 175, y: 265, width:210, height: 35))
        companyTg.text = " @twa777"
        companyTg.backgroundColor = .systemGray6
        companyTg.layer.cornerRadius = 10
        companyTg.clipsToBounds = true
        self.view.addSubview(companyTg)
        
        let developersLabel = UILabel(frame: CGRect(x: 30, y: 345, width: 135, height: 170))
        developersLabel.text = " Разработчики:"
        developersLabel.backgroundColor = .black
        developersLabel.textColor = .white
        developersLabel.layer.cornerRadius = 10
        developersLabel.clipsToBounds = true
        self.view.addSubview(developersLabel)
        
        self.view.addSubview(mapView)
        
        addPinToMap()
        mapView.mapType = .standard
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(openWebsite))
        mapView.addGestureRecognizer(tapGesture)
        companyWebsite.addGestureRecognizer(tapGesture)
        
        // Создание UIScrollView
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        // Устанавливаем constraints для UIScrollView
        NSLayoutConstraint.activate([
            scrollView.pinLeft(to: developersLabel, 145),
            scrollView.widthAnchor.constraint(equalToConstant: 210), // Ширина UIScrollView
            scrollView.heightAnchor.constraint(equalToConstant: 170), // Высота UIScrollView
            scrollView.pinTop(to: companyWebsite, 40)
        ])
        
        // Создание основного StackView
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 10
        
        let developers = [
            "Лебедев Илья пресс-секретарь",
            "Лебедев Илья дизайнер",
            "Лебедев Илья тестировщик",
            "Лебедев Илья менеджер",
            "Лебедев Илья аналитик",
            "Лебедев Илья разработчик",
            "Лебедев Илья тестировщик",
            "Лебедев Илья дизайнер",
            "Лебедев Илья аналитик",
            "Лебедев Илья менеджер"
        ]

        // Добавляем элементы в StackView
        for i in 0...9 {
            let label = UILabel()
            label.backgroundColor = .systemGray6
            label.layer.cornerRadius = 10
            label.clipsToBounds = true
            label.text = developers[i]
            label.font = UIFont.systemFont(ofSize: 10)
            label.textAlignment = .center
            label.heightAnchor.constraint(equalToConstant: 50).isActive = true // Устанавливаем высоту для элементов
            
            stackView.addArrangedSubview(label) // Добавляем элемент в StackView
        }
        
        // Добавляем StackView в UIScrollView
        scrollView.addSubview(stackView)
        
        // Устанавливаем constraints для StackView
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
     

        
        NSLayoutConstraint.activate([
            mapView.pinTop(to: developersLabel, 175),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                    mapView.heightAnchor.constraint(equalToConstant: 300) // Высота карты
                ])
    }
    
    
    
        
        
    
}
