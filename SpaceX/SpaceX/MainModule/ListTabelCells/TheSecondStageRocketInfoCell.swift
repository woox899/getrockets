import UIKit

final class TheSecondStageRocketInfoCell: UITableViewCell {
    static let reuseID = "TheSecondStageRocketInfoCell"
    
    //MARK: - заголовки значений
    let mainLabel2 = UILabel()
    let numbeOfEnginesLabel2 = UILabel()
    let fuelCuantityLabel2 = UILabel()
    let combustionTimeLabel2 = UILabel()
    
    //MARK: - значения
    let numbeOfEnginesValueLabel2 = UILabel()
    let fuelCuantityValueLabel2 = UILabel()
    let combustionTimeValueLabel2 = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: Self.reuseID)
        
        setupUI()
        setupMainLabel2()
        setupNumbeOfEnginesLabel2()
        setupFuelCuantityLabel2()
        setupCombustionTimeLabel2()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(mainLabel2)
        contentView.addSubview(numbeOfEnginesLabel2)
        contentView.addSubview(fuelCuantityLabel2)
        contentView.addSubview(combustionTimeLabel2)
        contentView.addSubview(numbeOfEnginesValueLabel2)
        contentView.addSubview(fuelCuantityValueLabel2)
        contentView.addSubview(combustionTimeValueLabel2)
        
        mainLabel2.translatesAutoresizingMaskIntoConstraints = false
        numbeOfEnginesLabel2.translatesAutoresizingMaskIntoConstraints = false
        fuelCuantityLabel2.translatesAutoresizingMaskIntoConstraints = false
        combustionTimeLabel2.translatesAutoresizingMaskIntoConstraints = false
        numbeOfEnginesValueLabel2.translatesAutoresizingMaskIntoConstraints = false
        fuelCuantityValueLabel2.translatesAutoresizingMaskIntoConstraints = false
        combustionTimeValueLabel2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainLabel2.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            mainLabel2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -32),
            mainLabel2.topAnchor.constraint(equalTo: contentView.topAnchor),
          
            numbeOfEnginesLabel2.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            numbeOfEnginesLabel2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -167),
            numbeOfEnginesLabel2.topAnchor.constraint(equalTo: mainLabel2.bottomAnchor, constant: 16),
       
            fuelCuantityLabel2.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            fuelCuantityLabel2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -167),
            fuelCuantityLabel2.topAnchor.constraint(equalTo: numbeOfEnginesLabel2.bottomAnchor, constant: 16),

            combustionTimeLabel2.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            combustionTimeLabel2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -167),
            combustionTimeLabel2.topAnchor.constraint(equalTo: fuelCuantityLabel2.bottomAnchor, constant: 16),
            
            numbeOfEnginesValueLabel2.leadingAnchor.constraint(equalTo: numbeOfEnginesLabel2.trailingAnchor, constant: 19),
            numbeOfEnginesValueLabel2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -68),
            numbeOfEnginesValueLabel2.topAnchor.constraint(equalTo: mainLabel2.bottomAnchor, constant: 16),
            
            fuelCuantityValueLabel2.leadingAnchor.constraint(equalTo: fuelCuantityLabel2.trailingAnchor, constant: 19),
            fuelCuantityValueLabel2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -68),
            fuelCuantityValueLabel2.topAnchor.constraint(equalTo: numbeOfEnginesValueLabel2.bottomAnchor, constant: 16),
            
            combustionTimeValueLabel2.leadingAnchor.constraint(equalTo: combustionTimeLabel2.trailingAnchor, constant: 19),
            combustionTimeValueLabel2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -68),
            combustionTimeValueLabel2.topAnchor.constraint(equalTo: fuelCuantityValueLabel2.bottomAnchor, constant: 16),
            
        ])
    }
    
    func setupMainLabel2() {
        mainLabel2.text = "Вторая ступень"
        mainLabel2.textColor = .white
        mainLabel2.font = .systemFont(ofSize: 22)
    }
    
    func setupNumbeOfEnginesLabel2() {
        numbeOfEnginesLabel2.text = "Количество двигателей"
        numbeOfEnginesLabel2.textColor = .white
        numbeOfEnginesLabel2.font = .systemFont(ofSize: 16)
        numbeOfEnginesLabel2.adjustsFontSizeToFitWidth = true
    }
    
    func setupFuelCuantityLabel2() {
        fuelCuantityLabel2.text = "Количество топлива"
        fuelCuantityLabel2.textColor = .white
        fuelCuantityLabel2.font = .systemFont(ofSize: 16)
    }
    
    func setupCombustionTimeLabel2() {
        combustionTimeLabel2.text = "Время сгорания"
        combustionTimeLabel2.textColor = .white
        combustionTimeLabel2.font = .systemFont(ofSize: 16)
    }
    
    func setupNumbeOfEnginesValueLabel2(text: String) {
        numbeOfEnginesValueLabel2.text = text
        numbeOfEnginesValueLabel2.textColor = .white
        numbeOfEnginesValueLabel2.font = .systemFont(ofSize: 16)
        numbeOfEnginesValueLabel2.textAlignment = .right
    }
    
    func setupFuelCuantityValueLabel2(text: String) {
        fuelCuantityValueLabel2.text = text
        fuelCuantityValueLabel2.textColor = .white
        fuelCuantityValueLabel2.font = .systemFont(ofSize: 16)
        fuelCuantityValueLabel2.textAlignment = .right
    }
    
    func setupCombustionTimeValueLabel2(text: String) {
        combustionTimeValueLabel2.text = text
        combustionTimeValueLabel2.textColor = .white
        combustionTimeValueLabel2.font = .systemFont(ofSize: 16)
        combustionTimeValueLabel2.textAlignment = .right
    }
}
