//
//  Inspiracion.swift
//  ProyectoVerde
//
//  Created by mac20@ioslabacatlan.appleid.com on 10/11/23.
//

import SwiftUI

struct Inspiracion: View {
    @State private var nota = ""
    @State private var notas: [String] = []
    var body: some View {
        NavigationView {
            VStack {
                TabView {
                    RectangleView(imageName: "img1")
                        .tag(0)
                    RectangleView(imageName: "img2")
                        .tag(1)
                    RectangleView(imageName: "img3")
                        .tag(2)
                    RectangleView(imageName: "img4")
                        .tag(3)
                    RectangleView(imageName: "img5")
                        .tag(4)
                    RectangleView(imageName: "img6")
                        .tag(5)
                    RectangleView(imageName: "img7")
                        .tag(6)
                    RectangleView(imageName: "img8")
                        .tag(7)
                }.padding(10)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                .frame(height: 280)
                
                VStack {
                    NavigationLink(destination: SegundaVista()) {
                        HStack {
                            Image("agua")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .font(.system(size: 80))
                                .foregroundColor(.black)
                            Text("¿Por qué es importante beber agua?")
                        }
                    }
                    
                    NavigationLink(destination: TerceraVista()) {
                        HStack {
                            Image("meditar")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .font(.system(size: 80))
                                .foregroundColor(.blue)
                            Text("Beneficios de la meditación               ")
                        }
                    }
                    
                    NavigationLink(destination: CuartaVista()) {
                        HStack {
                            Image("basura")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .font(.system(size: 80))
                                .foregroundColor(.blue)
                            Text("¿Qué tirar en cada contenedor?        ")
                        }
                    }
                    
                    NavigationLink(destination: QuintaVista()) {
                        HStack {
                            Image("huracan")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .font(.system(size: 80))
                                .foregroundColor(.blue)
                            Text("Influencia del cambio climático en los huracanes  ")
                        }
                    }
                }
            }
            .navigationTitle("Inspiración")
        }
    }
}

struct RectangleView: View {
    var imageName: String

    var body: some View {
        NavigationLink(destination: DetalleView(imageName: imageName)) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
        }
    }
}

struct DetalleView: View {
    var imageName: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)

            Text(imageName)
                .font(.largeTitle)
                .padding()
        }
        .navigationTitle(imageName)
    }
}

struct SegundaVista: View {
    var body: some View {
        Text("¿Por qué es importante beber agua?")
            .font(.largeTitle)
            .padding(15)
        Image("agua").resizable().frame(width: 400, height: 250)
        Text("El agua proporciona minerales escenciales como el calcio, magnesio y el flúor, que sirven para fortalecer los huesos y dientes.").font(.title3)
       Text("Las funcionalidades en nuestro cuerpo son múltiples, entre las más importantes se encuentran: la participación en el buen funcionamiento del cerebro y los nervios, permite el transporte de nutrientes a las células, colabora en el proceso digestivo, en la respiración y circulación sanguínea...").font(.title3)
        VStack{
            Link(destination: URL(string: "https://acortar.link/Na70NX")!){
                HStack{
                    Image(systemName: "link")
                    Text("Seguir leyendo...")
                }
            }
        }
    }
}
//haces lo mismo n cantidad de veces y n me refiero a la cantidad que quieras
struct TerceraVista: View {
    var body: some View {
        Text("Beneficios de la meditación")
            .font(.largeTitle)
            .padding(15)
        Image("meditar").resizable().frame(width: 400, height: 250)
       Text("La meditación puede darte una sensación de calma, paz y equilibrio que puede beneficiar tanto tu bienestar emocional como tu salud general. También puedes usarla para relajarte y lidiar con el estrés al enfocar tu atención en algo que te calme. La meditación puede ayudarte a aprender a mantenerte centrado y a conservar la paz interior.").font(.title3)
        VStack{
            Link(destination: URL(string: "https://acortar.link/Hhy41A")!){
                HStack{
                    Image(systemName: "link")
                    Text("Seguir leyendo...")
                }
            }
        }
    }
}

struct CuartaVista: View {
    var body: some View {
        Text("¿Qué tirar en cada contenedor")
            .font(.largeTitle)
            .padding(15)
        Image("basura").resizable().frame(width: 400, height: 250)
       Text("Dentro del contenedor amarillo, debemos depositar botellas y envases de plástico, envases metálicos y briks. El contenedor azul suele ser fácil de distinguir y de usar, ya que está destinado solo al papel y al cartón. Además del plástico y el papel/catón existen otros muchos tipos de materiales que deben depositarse en sus correspondientes contenedores: vidrio en el contenedor verde, residuos orgánicos en el contenedor marrón, restos no reciclables en el contenedor gris").font(.title3)
        VStack{
            Link(destination: URL(string: "https://acortar.link/wGJoxq")!){
                HStack{
                    Image(systemName: "link")
                    Text("Seguir leyendo...")
                }
            }
        }
    }
}

struct QuintaVista: View {
    var body: some View {
        Text("Así afecta el cambio climático a la formación de huracanes")
            .font(.largeTitle)
            .padding()
        
        Image("huracan").resizable().frame(width: 400, height: 250)
        
        Text("Phil Klotzbach, investigador de huracanes en la Universidad Estatal de Colorado, explica que la mayor preocupación respecto al cambio climático radica en el aumento del nivel del mar y el aumento de las precipitaciones. A nivel mundial, la temperatura media de la superficie oceánica ha aumentado al menos 1ºC desde finales del siglo XIX.").font(.title3)
        VStack{
            Link(destination: URL(string: "https://acortar.link/QBchoh")!){
                HStack{
                    Image(systemName: "link")
                    Text("Seguir leyendo...")
                }
            }
        }
    }
}

#Preview {
    Inspiracion()
}
