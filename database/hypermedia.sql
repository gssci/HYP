-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 03, 2016 alle 14:52
-- Versione del server: 5.7.11
-- Versione PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hypermedia`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `assistenza`
--

CREATE TABLE `assistenza` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descrizione` text,
  `id_categoria` int(11) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `assistenza`
--

INSERT INTO `assistenza` (`id`, `nome`, `descrizione`, `id_categoria`, `tipo`) VALUES
(1, 'Attivazione linea di casa', 'Richiedere l’attivazione di una linea telefonica di casa è molto semplice, puoi:\r\n\r\nrichiederla online\r\nchiamare il Servizio Clienti linea fissa 187\r\nrecarti presso un Negozio TIM.\r\nVerifica la modalità di attivazione consultando on line le varie offerte disponibili.\r\n\r\nI dati necessari sono:\r\n\r\nnome e cognome\r\ncodice fiscale\r\nindirizzo dell\'abitazione per cui richiedi l\'installazione della linea\r\nun recapito telefonico di cellulare\r\nindirizzo email (facoltativo).\r\nIl nostro personale tecnico ti contatterà quanto prima per concordare l’appuntamento per l’installazione dell’impianto telefonico.', 1, 'Fisso'),
(2, 'Trasloco', 'Il trasloco è un\'operazione che ti consente di spostare la tua linea \r\ntelefonica presso una nuova abitazione, nella stessa città o in una città diversa.\r\n Puoi gestirla direttamente online basta registrarsi all’Area Clienti', 1, 'Fisso'),
(3, 'Variazione abbonamento', 'Se hai cessato la tua attività professionale, puoi richiedere la variazione del tuo contratto di abbonamento telefonico.\r\nPer richiedere la variazione chiama il Servizio Clienti 191.\r\n\r\nCon la richiesta della trasformazione del contratto dalla categoria Affari (“A”) alla categoria Residenziale\r\n (“B”) il costo del tuo abbonamento mensile passerà da:\r\n\r\n22,50 € (IVA esclusa) a 17,54 € (IVA al 22% inclusa), in caso di linea telefonica di base\r\n31,00 € (IVA esclusa) a 20,17 € (IVA al 22% inclusa), in caso di linea ISDN.', 1, 'Fisso'),
(4, 'Restituzione prodotti', 'Per cessare il noleggio di un prodotto, con la conseguente interruzione del relativo abbonamento, \r\nbasta chiamare il Servizio Clienti linea fissa 187 e poi consegnare o spedire il prodotto insieme \r\nal modulo di accompagnamento che puoi scaricare da questa pagina.\r\nSe hai chiesto il recesso dal Contratto di Noleggio e Manutenzione devi restituire il prodotto in\r\n noleggio entro e non oltre 30 giorni dalla data della richiesta di cessazione/recesso del contratto,\r\n e consegnarlo presso i seguenti Negozi TIM:\r\n\r\nROMA:           Viale Liegi, 31\r\nMILANO:        Piazza Cordusio snc - ang. Via Broletto\r\nNAPOLI:         Centro Direzionale - Isola A4\r\nPALERMO:     Via della libertà, 37/d\r\nTREVISO:       Via XX Settembre, 2\r\noppure spedirlo a mezzo pacco postale a: \r\n\r\n        Telecom Italia S.p.A. c/o Geodis Logistics\r\n        Magazzino Reverse A22\r\n        Piazzale Giorgio Ambrosoli snc\r\n        27015 Landriano PV\r\n\r\n\r\nAl pacco postale devi allegare il modulo di accompagnamento che puoi scaricare da questa pagina.', 1, 'Fisso'),
(5, 'Recesso', 'Per potersi avvalere del diritto di ripensamento inerente a richieste di:\r\n\r\nATTIVAZIONE NUOVA LINEA\r\nPASSAGGIO DA ALTRO OPERATORE\r\nATTIVAZIONE OFFERTA/SERVIZIO SU LINEA GIA’ TIM\r\nACQUISTO/NOLEGGIO DI PRODOTTI', 1, 'Fisso'),
(6, 'Subentro', 'Il subentro ti permette di modificare l\'intestazione di una linea\r\n telefonica attiva nella stessa sede dove si trova l\'impianto garantendo\r\n così la continuità nell\'emissione delle fatture. La modifica dell\'intestazione \r\nè possibile solo con il consenso dell\'attuale titolare della linea.\r\nIl subentro può essere a titolo gratuito (subentro familiare, subentro familiare\r\n richiesto da erede a seguito decesso titolare della linea, subentro tra coniugi separati), \r\noppure oneroso. Chi subentra assume a proprio carico ogni onere contrattuale del precedente intestatario', 1, 'Fisso'),
(7, 'Tutto sulla tua SIM', 'Tutto ciò che devi sapere per gestire al meglio la tua SIM:\r\n\r\nI codici PIN e PUK\r\nCosa fare in caso di furto o smarrimento\r\nSostituzione della tua SIM\r\nReintegro della numerazione prepagata', 1, 'Mobile'),
(8, 'Passaggio da abbonamento a ricaricabile', 'Per passare la tua utenza TIM da abbonamento a servizio ricaricabile puoi \r\ncompilare il modulo di “Richiesta di migrazione da abbonamento a ricaricabile”. \r\nIl modulo è disponibile in formato pdf nella sezione Moduli e può essere scaricato\r\n direttamente dalla sottosezione “clienti con abbonamento”.\r\nPotrai inviare il modulo compilato con la richiesta di cessazione del contratto \r\ndi abbonamento e la specificata volontà di passare verso servizio ricaricabile \r\n(indicando il profilo e l\'eventuale opzione) e la modalità di rimborso ACI \r\n(assegno/accredito su linea ricaricabile), al numero di fax dedicato 800600119.\r\n\r\nPuoi effettuare il passaggio scrivendoci o in alternativa presso un qualsiasi Negozio TIM.', 1, 'Mobile'),
(9, 'LoSai e ChiamaOra di TIM', 'LoSai di TIM, ti informa sulle chiamate ricevute mentre hai il telefonino spento, non raggiungibile, quando sei occupato in un\'altra conversazione e negli altri casi in cui non è stato possibile contattarti.\r\nQuando torni disponibile riceverai un SMS di notifica, il cui mittente è il numero di chi ti ha cercato e nel testo è indicata la data e l\'ora della chiamata ricevuta.\r\nSe il numero di chi ti ha cercato è salvato nella tua rubrica, vedrai direttamente il suo nome come mittente e potrai richiamare, o inviare un SMS, direttamente dopo aver letto il messaggio di notifica.\r\nCon LoSai di TIM ricevi un SMS per ogni chiamata persa, sia quando sei in Italia sia quando ti trovi all’Estero senza costi aggiuntivi rispetto al costo dell’abbonamento.\r\n \r\n\r\nChiamaOra di TIM, ti permette di sapere sempre quand’è il momento giusto per richiamare chi stai cercando.\r\nQuando la persona che stai chiamando al momento non può rispondere, perché ha il telefonino spento, fuori copertura o è occupata in un’altra conversazione, il servizio ChiamaOra di TIM ti consente\r\n di ricevere un SMS di avviso, oppure di prenotare la richiamata automatica, non appena la persona cercata torna contattabile.\r\nL’utilizzo del ChiamaOra di TIM è semplicissimo!\r\nQuando chiami un tuo amico ed ascolti la fonia di cortesia del servizio puoi decidere di:\r\nchiudere subito la chiamata e ricevere un SMS di avviso quando il tuo amico tornerà contattabile (nel testo dell\'SMS sarà indicata l’ora in cui è tornato raggiungibile).\r\nse invece vuoi prenotare la richiamata automatica, attendendo in linea, quando la persona chiamata tornerà raggiungibile il tuo telefonino squillerà e, rispondendo, ChiamaOra di TIM richiamerà per te la persona cercata.\r\nLa richiamata sarà tariffata in base al tuo piano tariffario. Se invece hai attivato una delle opzioni tariffarie di TIM (voce, SMS, Internet), le richiamate sono tariffate secondo le condizioni previste da tali offerte.', 1, 'Mobile'),
(10, 'MyTim Fisso', 'Registrandoti al MyTIM Fisso o scaricando l’applicazione per smartphone \r\ne tablet avrai  a disposizione tutte \r\nle informazioni relative alla tua linea telefonica.\r\n\r\nPotrai visualizzare i servizi e le offerte attivi sulla tua linea telefonica, \r\npagare le tue fatture e avere informazioni relative al traffico.', 1, 'Cosa puoi fare online'),
(11, 'Come registrarsi a MyTim Fisso', 'Scopri come registrarti alla nostra Area Clienti per gestire online la tua linea,\r\n la fattura e tutti i servizi compresi.', 1, 'Cosa puoi fare online'),
(12, 'Come entrare in TIM con la tua linea mobile', 'Il servizio di portabilità ti consente di cambiare Operatore telefonico portando con te il tuo numero di telefonino.\r\n Scopri come Passare a TIM scegliendo la modalità che preferisci \r\ntra quelle che TIM ti mette a disposizione:online, con operatore, negozio.', 1, 'Ti serve aiuto per entrare in TIM'),
(13, 'Il riconoscimento del credito nel caso di portabilità in TIM', 'Con il servizio di Portabilità del numero mobile, puoi diventare cliente TIM mantenendo il \r\nnumero telefonico del tuo attuale gestore di telefonia mobile.\r\nOltre a mantenere il tuo numero di telefonino, hai la possibilità di richiedere il riconoscimento \r\ndel credito disponibile sulla tua linea, a seguito del passaggio in TIM. \r\nIl trasferimento del credito residuo dovrà essere specificato nel momento in cui effettui la \r\nrichiesta di portabilità del numero sull\'apposito modulo. \r\nLa prestazione del riconoscimento del credito prevede un costo che è stabilito dall\'operatore di \r\nprovenienza. Sarà quest’ultimo a comunicare a TIM l’importo da trasferire, che sarà costituito dal \r\ntuo credito residuo al netto del costo del servizio di trasferimento. Saranno inoltre esclusi eventuali \r\nbonus presenti sulla tua linea.\r\nQualora il tuo credito residuo sia insufficiente a coprire il costo del servizio o nel caso in cui decidessi, \r\nin sede di richiesta di portabilità, di non richiedere il riconoscimento del credito, il tuo credito continuerà ad essere trattato in base alle norme in vigore per cui ne potrai richiedere la restituzione al tuo attuale operatore mobile secondo le modalità dallo stesso previste.\r\n\r\nComunicazione per i clienti Bip Mobile che hanno fatto richiesta di portabilità su rete TIM\r\n\r\nSe hai effettuato richiesta di portabilità da Bip Mobile su rete TIM, ti informiamo che, a causa della cessazione dei servizi da parte del tuo operatore, non potrà essere riconosciuto il trasferimento del credito residuo presente sulla tua linea.\r\nPer informazioni sullo stato del tuo credito residuo e sulle procedure per la restituzione dello stesso dovrai rivolgerti direttamente a Bip Mobile. \r\nTelecom Italia precisa che non è in alcun modo responsabile neanche per eventuali ritardi nell’attivazione della portabilità derivante dalla capacità di evasione delle richieste da parte di Bip Mobile.\r\n\r\nSi precisa che, in base alle modalità di gestione indicate dall’Autorità per le Garanzie nelle Comunicazioni, attualmente le richieste di portabilità dei clienti Bip Mobile non possono più essere accettate.\r\nCon il servizio di Portabilità del numero mobile, puoi diventare cliente TIM mantenendo il \r\nnumero telefonico del tuo attuale gestore di telefonia mobile.\r\nOltre a mantenere il tuo numero di telefonino, hai la possibilità di richiedere il riconoscimento \r\ndel credito disponibile sulla tua linea, a seguito del passaggio in TIM. \r\nIl trasferimento del credito residuo dovrà essere specificato nel momento in cui effettui la \r\nrichiesta di portabilità del numero sull\'apposito modulo. \r\nLa prestazione del riconoscimento del credito prevede un costo che è stabilito dall\'operatore di \r\nprovenienza. Sarà quest’ultimo a comunicare a TIM l’importo da trasferire, che sarà costituito dal \r\ntuo credito residuo al netto del costo del servizio di trasferimento. Saranno inoltre esclusi eventuali \r\nbonus presenti sulla tua linea.\r\nQualora il tuo credito residuo sia insufficiente a coprire il costo del servizio o nel caso in cui decidessi, \r\nin sede di richiesta di portabilità, di non richiedere il riconoscimento del credito, il tuo credito continuerà ad essere trattato in base alle norme in vigore per cui ne potrai richiedere la restituzione al tuo attuale operatore mobile secondo le modalità dallo stesso previste.\r\n\r\nComunicazione per i clienti Bip Mobile che hanno fatto richiesta di portabilità su rete TIM\r\n\r\nSe hai effettuato richiesta di portabilità da Bip Mobile su rete TIM, ti informiamo che, a causa della cessazione dei servizi da parte del tuo operatore, non potrà essere riconosciuto il trasferimento del credito residuo presente sulla tua linea.\r\nPer informazioni sullo stato del tuo credito residuo e sulle procedure per la restituzione dello stesso dovrai rivolgerti direttamente a Bip Mobile. \r\nTelecom Italia precisa che non è in alcun modo responsabile neanche per eventuali ritardi nell’attivazione della portabilità derivante dalla capacità di evasione delle richieste da parte di Bip Mobile.\r\n\r\nSi precisa che, in base alle modalità di gestione indicate dall’Autorità per le Garanzie nelle Comunicazioni, attualmente le richieste di portabilità dei clienti Bip Mobile non possono più essere accettate.', 1, 'Ti serve aiuto per entrare in TIM'),
(14, 'Come leggere la fattura della linea fissa', 'La fattura della linea fissa è semplice e facile da leggere perché disegnata prendendo spunto dai suggerimenti dei clienti. La veste grafica, moderna e raffinata, utilizza un linguaggio sempre più chiaro per l’esposizione delle voci di spesa, facilitando la lettura di tutte le informazioni di cui hai bisogno e garantendo maggiore trasparenza nei contenuti e negli importi.', 2, 'Fisso'),
(15, 'Come pagare la fattura della linea fissa', 'Puoi pagare le fatture TIM in qualsiasi momento utilizzando una carta di credito \r\n(American Express, Diners, Visa, Mastercard emesse in Italia). ', 2, 'Fisso'),
(16, 'Verifica credito residuo e bonus disponibili per i clienti Prepagati', 'Il credito residuo disponibile, le offerte e lo stato dei bonus attivi sulla tua linea ricaricabile, sono consultabili attraverso le seguenti modalità:\r\n\r\nDirettamente dal tuo Smartphone, accedendo all’app MyTIM Mobile, attualmente disponibile in download gratuito nelle versioni per iPhone \r\ne per smartphone con sistema operativo Android.', 2, 'Mobile'),
(17, 'Dettaglio delle chiamate per i clienti ricaricabili', 'Il servizio "documentazione traffico" ti offre la possibilità di avere il dettaglio di ogni telefonata, connessione dati o altro evento, effettuato dalla tua linea (*). Per ogni evento viene fornita l’indicazione della data/ora di effettuazione, del costo, della tipologia e del numero chiamato se si tratta di traffico voce o sms (con le ultime tre cifre asteriscate - L. 171/98 "Tutela vita privata nelle telecomunicazioni"). \r\n\r\nLa documentazione del traffico è sempre disponibile in MyTIM Mobile e consultabile fino a due mesi antecedenti la data di consultazione del traffico se utilizzi una linea ricaricabile, in diversi formati facilmente consultabili ed archiviabili (esempio pdf). \r\n\r\nÈ comunque possibile richiedere l’invio di un tabulato cartaceo del traffico pregresso (equivalente al pdf già disponibile in MyTIM Mobile), o l’invio di un tabulato del traffico pregresso in chiaro (deve essere in questo caso specificato), purché rientri nei periodi sopra indicati. In questo caso dovrai compilare ed inviare l\'apposito modulo di "Richiesta Documentazione Traffico" che puoi scaricare in formato pdf dalla sezione Moduli, selezionando la sottosezione Ricaricabile di riferimento. \r\n ', 2, 'Mobile'),
(18, 'MyTim Mobile (controllo costi)', 'In MyTIM Mobile hai a disposizione tutte le informazioni che riguardano la tua linea mobile.\r\n\r\nPuoi tenerti costantemente aggiornato sulle offerte che TIM ha pensato per  te, visualizzare il tuo traffico telefonico, verificare il credito residuo ed effettuare ricariche, visualizzare e pagare online la tua fattura.\r\n\r\nREGISTRATI\r\n', 2, 'Cosa puoi fare online'),
(19, 'Verifica online il tuo traffico', 'Accedendo alla sezione MyTIM Mobile del nostro sito è possibile verificare il dettaglio dei consumi relativi al traffico effettuato.\r\n\r\nSe hai una linea prepagata: è possibile verificare il dettaglio del traffico effettuato a partire dal giorno precedente e fino agli ultimi 2 mesi rispetto alla data di consultazione.\r\n \r\nSe hai sottoscritto un abbonamento: oltre a verificare il saldo dei consumi in corso di fatturazione, è possibile verificare online e scaricare il pdf del traffico telefonico effettuato entro 90 gg. \r\ndalla data di scadenza della fattura di riferimento.', 2, 'Cosa puoi fare online'),
(20, 'Buono sconto per cambio telefono', 'Vuoi un nuovo smartphone?\r\n\r\nPortaci il tuo vecchio telefono, da oggi vale uno sconto sul nuovo!\r\n\r\nCon il servizio TIM Valuta puoi far valutare gratuitamente e senza impegno il tuo telefonino, smartphone o tablet.  Ricevi subito uno sconto da utilizzare come meglio desideri: per l’acquisto di un nuovo telefonino, smartphone, tablet, chiavetta, Internet Pack, oppure in Ricarica telefonica TIM. Il servizio è aperto a tutti!\r\n\r\n\r\nFar valutare il telefono è molto semplice. E’ sufficiente:\r\n\r\n• portare presso uno dei negozi TIM che aderiscono all’iniziativa il tuo vecchio telefono, smartphone o tablet\r\n• l’addetto del negozio procederà alla valutazione del prodotto, verificandone le condizioni e lo stato d’uso\r\n• se accetti la valutazione, riceverai uno sconto di pari valore che potrai utilizzare subito per l’acquisto di un nuovo smartphone, tablet, oppure Ricariche telefoniche TIM.', 3, 'Smartphone e Tablet'),
(21, 'Assistenza Tecnica Specializzata con SOS Smartphone', 'SOSsmartphone è il servizio di TIM per tutti i clienti, Ricaricabili o con Abbonamento, che permette di ricevere un’assistenza tecnica specializzata e personalizzata per la gestione del proprio smartphone o tablet.\r\n\r\nGrazie al servizio SOSsmartphone potrai parlare con un esperto che ti fornirà tutta la consulenza e l’assistenza “premium” di cui necessiti e che soprattutto sarà in grado di connettersi in remoto ed operare direttamente sul tuo dispositivo.\r\n\r\nI servizi che potrai ricevere con SOSsmartphone sono:\r\n\r\nsupporto per trasferimento dati in caso di cambio telefono: esempio trasferimento rubrica, foto, sms;\r\nconsulenza nell’utilizzo delle funzioni avanzate dello smartphone;\r\nassistenza specialistica sulle configurazioni avanzate dello smartphone e integrazione nella tua rete domestica;\r\ngestione e sincronizzazione dei tuoi contenuti multimediali;\r\nsupporto per garantire il massimo della sicurezza;\r\nconservazione e protezione dei tuoi dati;\r\ntrasferimento di contenuti;\r\naggiornamento del tuo smartphone;\r\neffettuazione check up.\r\n\r\nPer richiedere il servizio SOSsmartphone potrai:\r\n\r\ncontattare il numero 0458214811 (chiamata a pagamento in base al proprio piano tariffario/offerta);\r\nscaricare l’App SOS Smartphone da APP Store (per iOS) e Google Play (per Android) e richiedere l’intervento.\r\nIl servizio SOSsmartphone prevede un costo ad intervento a partire da 3€ (IVA inclusa). L’importo sarà addebitato in fattura se sei un cliente con Abbonamento mentre sarà scalato dal credito residuo se sei un cliente Ricaricabile.\r\nDal 12 maggio inoltre il servizio SOSsmartphone è disponibile anche in abbonamento a 2€/mese. In questo modo avrai l’assistenza di cui hai bisogno sempre disponibile e completa per un anno.\r\n\r\nPer approfondimenti sul SOSsmartphone clicca qui.\r\n\r\nTi ricordiamo che nell’area Assistenza del sito TIM.it sono a tua disposizione tutte le guide per le configurazioni di smartphone, tablet e chiavette che ti consentiranno, in completata autonomia, di configurare il tuo telefonino a tutti i servizi TIM. Per accedere Clicca qui e seleziona la marca ed il modello di tuo interesse.', 3, 'Smartphone e Tablet'),
(23, 'Servizio mappe sul telefonino', 'Il servizio mappe è utilizzabile su numerosi telefoni di ultima generazione. In alcuni casi il software è già installato dal produttore, mentre in altri è possibile scaricare l’applicativo da Internet ed installarlo in un momento successivo all’acquisto. \r\n\r\nLa presenza di tale funzione varia secondo il modello e la versione software del telefonino. \r\nIl programma mappe è fruibile da tutti i telefonini con antenna GPS integrata. \r\n\r\nPer un corretto utilizzo, è importante sapere che la funzione mappe dal telefonino si avvale di una tecnologia particolare chiamata A-GPS, che implica la connessione ad Internet durante la fruizione del servizio. Se sei un cliente ricaricabile o con abbonamento, consulta la sezione dedicata alle offerte Internet e scegli quella più adatta alle tue esigenze . \r\nIn assenza di un’offerte specifica per il traffico dati verrà applicata  la tariffa base', 3, 'Smartphone e Tablet'),
(24, 'TIMMusic', 'Ascolta milioni di brani in streaming, tutte le novità discografiche,\r\nanteprime esclusive e tante playlist di tutti i generi. Su smartphone\r\nsenza consumare GB, pc e tablet. Quando vuoi e quanto vuoi.', 4, NULL),
(25, 'TIMReading', 'Porta sempre con te su Smartphone e Tablet i tuoi eBook preferiti,\r\nsegui tutte le tue passioni scegliendo tra i magazine più amati e sfoglia\r\nil tuo quotidiano dalle prime ore del mattino.\r\nSu TIMreading trovi ciò che ami leggere, dove e quando vuoi.', 4, NULL),
(26, 'TIMGames', 'Sparatutto, sport estremi, i migliori Classici e molto altro ancora...\r\nCon TIMgames hai a disposizione centinaia di giochi per il tuo\r\nsmartphone e tablet, per divertirti dove e quando vuoi.', 4, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie_assistenza`
--

CREATE TABLE `categorie_assistenza` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categorie_assistenza`
--

INSERT INTO `categorie_assistenza` (`id`, `nome`) VALUES
(1, 'Gestione Linea e Servizi'),
(2, 'Controllo Costi e Pagamenti'),
(3, 'Supporto Tecnico e Configurazione'),
(4, 'SmartLife');

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie_prodotti`
--

CREATE TABLE `categorie_prodotti` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categorie_prodotti`
--

INSERT INTO `categorie_prodotti` (`id`, `nome`) VALUES
(1, 'Smartphone e Telefoni'),
(2, 'Tablet e Computer'),
(3, 'Modem e Networking'),
(4, 'TV e SmartLiving'),
(5, 'Outlet');

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie_smartlife`
--

CREATE TABLE `categorie_smartlife` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categorie_smartlife`
--

INSERT INTO `categorie_smartlife` (`id`, `nome`) VALUES
(1, 'TV e Enterteinement'),
(2, 'Salute e Benessere'),
(3, 'Casa e Famiglia'),
(4, 'Servizi alla Persona');

-- --------------------------------------------------------

--
-- Struttura della tabella `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `id_assistenza` int(11) NOT NULL,
  `domanda` text NOT NULL,
  `risposta` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `faq`
--

INSERT INTO `faq` (`id`, `id_assistenza`, `domanda`, `risposta`) VALUES
(1, 1, 'Quali documenti sono necessari?', 'Dovrai fornire in visione i seguenti documenti:\r\ndocumento di identità del titolare linea (carta identità, patente di guida con foto, passaporto);\r\ncodice fiscale del titolare linea;\r\ndocumentazione antiabusivismo, rappresentata da uno dei seguenti documenti:\r\ncopia di una recente fattura (luce, gas, acqua) anche se intestata ad altri precedenti soggetti, occupanti la medesima unità immobiliare per la quale è stata fatta richiesta di collegamento telefonico\r\noppure\r\ncopia della concessione/licenza edilizia.\r\noppure\r\ncopia della domanda di concessione in sanatoria corredata della prova dell\'avvenuto pagamento delle somme dovute a titolo di oblazione (così come previsto dal 2° comma dell\'art.45 della legge 28.2.85 n.47).\r\nSolo nel caso non fosse possibile presentare uno qualsiasi dei documenti, potrai produrre in sostituzione una "autodichiarazione sostitutiva di atto notorio" autenticata dal notaio o dal segretario comunale come previsto dall\'art.4 della legge 4.1.68 e successive modificazioni ed integrazioni.'),
(2, 1, 'Quali sono le diverse tipologie di linea telefonica di casa?', '•    LINEA TELEFONICA PRINCIPALE: è una linea telefonica principale di tipo tradizionale per i clienti che non svolgono attività professionali intestata a qualunque componente del nucleo familiare anagrafico.\r\n•    LINEA TELEFONICA AGGIUNTIVA: è una linea telefonica aggiuntiva di tipo tradizionale intestata al medesimo titolare della linea principale, attivata nella stessa o in altra abitazione.\r\n•    LINEA ISDN: è una linea telefonica principale che si differenzia dalla linea di tipo tradizionale in quanto include alcuni servizi telefonici specifici.\r\n•    LINEA PER TRAFFICO ENTRANTE: è una linea telefonica di tipo tradizionale aggiuntiva a una linea principale, che consente la sola ricezione delle chiamate.\r\n•    LINEA IN FIBRA OTTICA: è la nuova linea per telefonare e navigare in Internet grazie all’alta velocità della fibra ottica, connettere contemporaneamente e con prestazioni elevate Tablet, PC, Smartphone e TV con  più applicazioni e dispositivi, vedere video anche in alta definizione senza attese né interruzioni.\r\n\r\nConsulta online le varie offerte disponibili.'),
(3, 1, 'Quanto costa attivare una linea telefonica di casa?', 'Il contributo per l’attivazione di una nuova linea tradizionale è pari a 97,60€ (IVA inclusa), salvo eventuali promozioni in corso.\r\n\r\nCon un costo di abbonamento mensile di 29 € (IVA inclusa) hai la linea di casa con incluse tutte le chiamate illimitate verso fissi e cellulari nazionali (TUTTO VOCE). \r\nCon un costo di abbonamento mensile di 19 € (IVA inclusa) hai la linea di casa con chiamate valorizzate a consumo (VOCE).\r\n\r\nPer conoscere le condizioni economiche agevolate riservate a particolari categorie di clientela clicca qui.\r\n\r\nNella sezione Offerte seleziona quella di tuo interesse anche per chiamare e navigare in Internet con ADSL e Fibra, verifica tutte le condizioni previste ed eventuali promozioni in corso sui contributi di attivazione (può essere previsto anche un contributo per l’attivazione di specifiche Offerte).  \r\n\r\nInoltre se domicili la fattura della linea fissa sul c/c bancario/postale o su carta di credito non ti sarà addebitato l’importo dell’anticipo conversazioni. Clicca qui per conoscere i dettagli.\r\n\r\nSe richiedi l’attivazione di una nuova linea o un trasloco di linea già attiva, che necessita di un collegamento telefonico attraverso opere speciali, in aree classificate “Nuclei Abitati” e “Case Sparse” dovrai corrispondere a TIM oltre al contributo di attivazione anche un contributo supplementare a fondo perduto (secondo quanto previsto dalla Delibera AGCOM 385/11/CONS). Il costo del contributo supplementare è calcolato sulla base del Listino allegato alla Delibera AGCOM 136/14/CONS e ti verrà comunicato preventivamente per fornirci l’esplicita accettazione. \r\n\r\nIn caso di richieste singole è pari al 30% del costo complessivo di installazione del collegamento. In caso di richieste contestuali (ossia sopraggiunte entro la fine lavori) che interessano lo stesso percorso di rete, la percentuale di contributo a carico dei clienti – limitatamente alle sole parti comuni dell’impianto - è pari al 50% del costo dell’impianto calcolato sulla base del medesimo listino e delle modalità previste dalla Delibera AGCOM n. 385/11/CONS, da ripartire equamente tra tutti i clienti che hanno contestualmente richiesto l’allacciamento alla rete. Relativamente alle restanti parti dell’impianto specifiche per ciascuna utenza il contributo dovuto da ciascun cliente resta determinato nella percentuale del 30%.\r\nL’importo del Contributo a fondo perduto può essere pagato in un’unica soluzione o fino a 24 rate mensili.\r\n\r\nPer prendere visione delle relative Condizioni clicca qui.\r\n\r\nPer la realizzazione dei collegamenti in fibra ottica che esulino dai normali standard tecnici per difficoltà realizzative e/o in presenza di richieste specifiche del Cliente, TIM si riserva di stimare un eventuale contributo economico supplementare alle condizioni standard da sottoporre a preventiva accettazione da parte del cliente. \r\n\r\nPer prendere visione delle relative Condizioni clicca qui.'),
(4, 1, 'Ho la linea telefonica di casa con un altro gestore ma vorrei rientrare in TIM, che cosa devo fare?', 'Per rientrare in TIM con la linea fissa, senza nessun disservizio e senza la necessità di comunicare \r\nil recesso direttamente al tuo attuale Operatore, è possibile inserire online la richiesta che implica \r\ndi conseguenza la cessazione del rapporto contrattuale con il tuo attuale Operatore.\r\nPer il buon esito della richiesta, è necessario reperire presso il tuo attuale operatore il Codice di\r\n Migrazione ossia una stringa alfa-numerica che serve per indicare correttamente la tua linea telefonica\r\n e per avviare le procedure di passaggio in TIM.\r\n(Per maggiori informazione sul codice di migrazione leggi la faq "Che cos\'è il Codice di Migrazione").\r\n\r\nSe hai più numeri attivi associati ad un unico Codice di Migrazione dovranno essere riportati all\'interno\r\n degli appositi campi. Il Codice di Migrazione è pubblicato nell’ultima fattura che hai ricevuto dal tuo \r\nattuale Operatore telefonico oppure lo potrai ottenere consultando il sito web o contattando il Call Center\r\n commerciale.\r\nIl Codice di Migrazione deve essere completo in ogni sua parte. Se in fattura trovi indicati due Codici di\r\n Migrazione, indicali entrambi. In caso contrario la procedura di passaggio non andrà a buon fine.\r\nIl passaggio in TIM avverrà con la tipologia di abbonamento al servizio telefonico da te scelto nella richiesta.\r\nDal momento in cui TIM riceverà la tua richiesta verranno immediatamente avviate tutte le procedure necessarie \r\nper la migrazione della linea telefonica verso TIM che ti contatterà se necessario per fissare un appuntamento \r\nper l’attivazione del servizio presso la tua abitazione.\r\nA meno di eventuali problemi tecnici che ne impediscano l’attivazione, il servizio scelto sarà attivato da TIM \r\ncon lo stesso numero telefonico da te attualmente utilizzato. Dopo circa 20 giorni potrai quindi riprendere ad \r\nutilizzare i servizi di TIM.\r\nPuoi chiamare gratuitamente il Servizio Clienti linea fissa 187 per conoscere le modalità di passaggio in TIM alternative.\r\n\r\nPer rientrare in TIM con la linea fissa, senza nessun disservizio e senza la necessità di comunicare \r\nil recesso direttamente al tuo attuale Operatore, è possibile inserire online la richiesta che implica \r\ndi conseguenza la cessazione del rapporto contrattuale con il tuo attuale Operatore.\r\nPer il buon esito della richiesta, è necessario reperire presso il tuo attuale operatore il Codice di\r\n Migrazione ossia una stringa alfa-numerica che serve per indicare correttamente la tua linea telefonica\r\n e per avviare le procedure di passaggio in TIM.\r\n(Per maggiori informazione sul codice di migrazione leggi la faq "Che cos\'è il Codice di Migrazione").\r\n\r\nSe hai più numeri attivi associati ad un unico Codice di Migrazione dovranno essere riportati all\'interno\r\n degli appositi campi. Il Codice di Migrazione è pubblicato nell’ultima fattura che hai ricevuto dal tuo \r\nattuale Operatore telefonico oppure lo potrai ottenere consultando il sito web o contattando il Call Center\r\n commerciale.\r\nIl Codice di Migrazione deve essere completo in ogni sua parte. Se in fattura trovi indicati due Codici di\r\n Migrazione, indicali entrambi. In caso contrario la procedura di passaggio non andrà a buon fine.\r\nIl passaggio in TIM avverrà con la tipologia di abbonamento al servizio telefonico da te scelto nella richiesta.\r\nDal momento in cui TIM riceverà la tua richiesta verranno immediatamente avviate tutte le procedure necessarie \r\nper la migrazione della linea telefonica verso TIM che ti contatterà se necessario per fissare un appuntamento \r\nper l’attivazione del servizio presso la tua abitazione.\r\nA meno di eventuali problemi tecnici che ne impediscano l’attivazione, il servizio scelto sarà attivato da TIM \r\ncon lo stesso numero telefonico da te attualmente utilizzato. Dopo circa 20 giorni potrai quindi riprendere ad \r\nutilizzare i servizi di TIM.\r\nPuoi chiamare gratuitamente il Servizio Clienti linea fissa 187 per conoscere le modalità di passaggio in TIM alternative.\r\n'),
(5, 1, '\r\nHo la linea telefonica di casa con TIM ma l’ADSL con un altro gestore e vorrei attivare il servizio ADSL con TIM.\r\n Cosa devo fare?', '\r\n\r\nE\' prevista la possibilità per i clienti di attivare un\'offerta ADSL di TIM senza nessun disservizio e senza la necessità\r\n di comunicare il recesso direttamente al tuo attuale Operatore. Il passaggio del servizio ADSL a TIM non comporta alcun\r\n costo aggiuntivo oltre al pagamento dell\'abbonamento mensile dell’offerta attivata. Per rientrare in TIM è possibile\r\n eseguire online la richiesta che implica di conseguenza la cessazione del rapporto contrattuale con il tuo attuale\r\n Operatore.\r\nPer il buon esito della richiesta, è necessario reperire presso il tuo attuale operatore che ti fornisce l’accesso\r\n ADSL il Codice di Migrazione. Questo codice è una stringa alfa-numerica che serve per indicare correttamente la linea\r\n telefonica e per avviare le procedure di passaggio.\r\n(Per maggiori informazione sul codice di migrazione leggi la faq "Che cos\'è il Codice di Migrazione").\r\n\r\nSe hai più numeri attivi associati ad un unico Codice di Migrazione dovranno essere riportati all\'interno degli \r\nappositi campi. Il Codice di Migrazione è pubblicato nell’ultima fattura che hai ricevuto dal tuo attuale Operatore\r\n telefonico oppure lo potrai ottenere consultando il sito web o contattando il Call Center commerciale.\r\n\r\nIl Codice di Migrazione è pubblicato nell’ultima fattura che hai ricevuto dal tuo attuale operatore telefonico con \r\nil quale hai servizio ADSL oppure lo potrai ottenere consultando il sito web o contattando il Call Center commerciale.\r\nIl Codice di Migrazione deve essere completo in ogni sua parte. Se in fattura trovi indicati due Codici di Migrazione,\r\n indicali entrambi. In caso contrario la procedura di passaggio non andrà a buon fine.\r\nDal momento in cui TIM riceverà la tua richiesta verranno immediatamente avviate tutte le procedure necessarie per \r\nla migrazione dell\'ADSL verso TIM. TIM quindi procederà ad attivare l\'offerta richiesta e, se necessario, ti contatterà\r\n per fissare un appuntamento per l’attivazione del servizio.\r\nA meno di eventuali problemi tecnici che ne impediscano l’attivazione, dopo circa 20 giorni potrai quindi utilizzare i \r\nservizi ADSL di TIM.\r\n\r\nL’eventuale esercizio del diritto di recesso (c.d. ripensamento) previsto dall’art. 52 e seguenti del D.lgs. 206/2005\r\n (Codice del Consumo) dopo l’avvio del processo di passaggio in TIM, non garantisce il ripristino automatico della \r\nsituazione contrattuale precedente.'),
(6, 1, 'Se attivo una linea in una seconda casa, quanto pago di abbonamento?', 'Se la nuova abitazione si trova nello stesso distretto telefonico di quella di origine,\r\n salvo problemi tecnici, sarà possibile mantenere il vecchio numero telefonico.\r\nFino al momento dell’attivazione della linea nella tua nuova abitazione potrai \r\ncontinuare ad utilizzare la linea telefonica nella tua vecchia abitazione.'),
(7, 2, 'Posso mantenere il mio numero telefonico?', 'Se la nuova abitazione si trova nello stesso distretto telefonico di quella di origine,\r\n salvo problemi tecnici, sarà possibile mantenere il vecchio numero telefonico.\r\nFino al momento dell’attivazione della linea nella tua nuova abitazione potrai \r\ncontinuare ad utilizzare la linea telefonica nella tua vecchia abitazione.'),
(8, 2, 'Come posso richiederlo?', 'Puoi gestire la tua richiesta di trasloco direttamente da questo sito oppure chiamando il Servizio Clienti 187.\r\nPer inviare la richiesta via web devi essere registrato all\'Area Clienti.\r\n\r\nDopo esserti autenticato non dovrai far altro che seguire alcuni semplici passaggi:\r\n\r\naccedere all\'Area Clienti entrare in "La mia Linea"\r\ncliccare su "Trasloca" e compilare online il modulo\r\nal completamento della richiesta di trasloco, riceverai un’e-mail di conferma di presa in carico della tua richiesta\r\npotrai, infine, seguire lo stato della tua richiesta accedendo in Area Clienti > Stato Richieste.'),
(9, 2, 'Cos\'è il trasloco di una linea telefonica?', 'Il trasloco ti permette di trasferire la tua\r\n linea telefonica presso una nuova abitazione, nella stessa città o in una città diversa.\r\n'),
(10, 2, 'Quali sono i tempi?', 'Il trasloco viene effettuato di norma entro 10 giorni lavorativi dalla richiesta.\r\n Tuttavia, nel caso in cui TIM riscontri la necessità di realizzare lavori aggiuntivi\r\n per il completamento del trasloco, essi saranno completamente a tuo carico . Se il trasloco\r\n avvenisse in un periodo superiore ai 10 giorni normalmente previsti, il Servizio Clienti ti\r\n fornirà tempestiva comunicazione della causa del ritardo, fornendoti indicazioni quanto più\r\n precise possibili sulla tempistica prevista.\r\nSe i tempi di completamento superano i 60 giorni dalla data di acquisizione della tua richiesta,\r\n in alternativa, potrai richiede la cessazione della tua vecchia linea e l’attivazione di una nuova\r\n linea presso la nuova abitazione, secondo le “ procedure eccezionali” descritte nel paragrafo successivo.'),
(11, 6, 'Subentro familiare', '\r\nLa richiesta di subentro familiare (gratuito) può essere effettuata dal titolare della linea,\r\n compilando e inviando il modulo online, visualizzabile direttamente su questo sito nella sezione\r\n MyTIM Fisso > La mia Linea, oppure telefonando al Servizio Clienti 187.\r\nIl subentro ti permette di variare l\'intestazione del contratto telefonico a favore di un altro\r\n membro del tuo nucleo familiare senza interruzione nell\'utilizzo della linea telefonica.\r\nRicorda inoltre che, una volta effettuato il subentro, la domiciliazione bancaria della fattura\r\n decade, quindi se hai e vuoi mantenere l\'addebito su conto corrente bancario, dovrai fare una \r\nnuova richiesta. La variazione è gratuita.\r\n\r\nPer richiedere il subentro puoi scegliere di:\r\n\r\ncompilare la richiesta online, accedendo alla sezione MyTIM Fisso > La mia Linea e cliccando su\r\n “Subentra”. E’ possibile utilizzare questa modalità solo per richiedere il subentro familiare\r\nchiamare gratuitamente, in presenza del servizio ADSL di TIM, il Servizio Clienti 187 per effettuare \r\nla registrazione del subentro attraverso il Verbal Ordering\r\n'),
(12, 6, '\r\nSubentro familiare richiesto da erede a seguito decesso titolare della linea', '\r\n\r\n\r\n\r\nQuesta tipologia di subentro permette di variare gratuitamente l\'intestazione del contratto telefonico\r\n a favore di un erede del titolare della linea deceduto, senza interruzione nell\'utilizzo della linea telefonica.\r\nPer richiederlo puoi scegliere di:\r\n\r\nchiamare gratuitamente il Servizio Clienti 187 che effettuerà un Verbal Ordering (registrazione della \r\nconversazione in cui viene espressa la volontà di subentrare)\r\ninviare una richiesta scritta di subentro a Telecom Italia Spa - servizio clienti residenziali -\r\n casella postale 211 – 14100 Asti o al numero verde di fax 800000187 indicando tutti i dati relativi all’utenza,\r\n allegando:\r\nautocertificazione di dichiarazione del decesso dell’intestatario;\r\nuna fotocopia di un documento d’identità di chi inoltra (dell’erede) la richiesta;\r\nfotocopia del codice fiscale del nuovo titolare (dell\'erede);\r\nun recapito telefonico per eventuali comunicazioni.'),
(13, 6, 'Subentro tra coniugi separati', '\r\n\r\nQuesta tipologia di subentro permette di variare gratuitamente l\'intestazione del contratto telefonico a favore del coniuge assegnatario della residenza a seguito di separazione, senza interruzione, nell\'utilizzo della linea telefonica.\r\n\r\nPer richiederlo puoi scegliere di:\r\n\r\nchiamare gratuitamente il Servizio Clienti 187\r\ninviare una richiesta scritta di subentro a Telecom Italia Spa - servizio clienti residenziali - casella postale 211 – 14100 Asti o al numero verde di fax 800000187 indicando tutti i dati relativi all’utenza, allegando:\r\no copia della sentenza di separazione che attribuisce espressamente la linea telefonica al coniuge assegnatario della casa e senza il benestare dell’altro coniuge titolare dell’utenza ubicata presso la casa coniugale;\r\no il benestare dell’altro coniuge titolare dell’utenza ubicata presso la casa coniugale.\r\n'),
(14, 6, 'Subentro oneroso', '\r\nSe il subentro non è a favore di un membro della tua famiglia, è a carattere oneroso.\r\n Per richiederlo puoi scaricare il modulo da questo sito e inviarlo, compilato in tutte \r\nle sue parti, al numero di fax o all\'indirizzo postale indicati all\'interno del modulo stesso,\r\n oppure puoi chiamare il Servizio Clienti 187.\r\nIn seguito alla tua richiesta, riceverai la copia del contratto da sottoscrivere e da restituire a TIM.'),
(15, 9, 'In cosa consiste il servizio LoSai e ChiamaOra?', 'LoSai di TIM, ti informa sulle chiamate ricevute mentre hai il telefonino spento, \r\nnon raggiungibile, quando sei occupato in un\'altra conversazione e negli altri casi\r\nin cui non è stato possibile contattarti.\r\nQuando torni disponibile riceverai un SMS di notifica, il cui mittente è il numero di\r\n chi ti ha cercato e nel testo è indicata la data e l\'ora della chiamata ricevuta.\r\nSe il numero di chi ti ha cercato è salvato nella tua rubrica, vedrai direttamente il\r\n suo nome come mittente e potrai richiamare, o inviare un SMS, direttamente dopo aver \r\nletto il messaggio di notifica.\r\nCon LoSai di TIM ricevi un SMS per ogni chiamata persa, sia quando sei in Italia sia \r\nquando ti trovi all’Estero senza costi aggiuntivi rispetto al costo dell’abbonamento.\r\n \r\n\r\nChiamaOra di TIM, ti permette di sapere sempre quand’è il momento giusto per richiamare chi\r\n stai cercando.\r\nQuando la persona che stai chiamando al momento non può rispondere, perché ha il telefonino \r\nspento, fuori copertura o è occupata in un’altra conversazione, il servizio ChiamaOra di TIM\r\n ti consente di ricevere un SMS di avviso, oppure di prenotare la richiamata automatica, non \r\nappena la persona cercata torna contattabile.\r\nL’utilizzo del ChiamaOra di TIM è semplicissimo!\r\nQuando chiami un tuo amico ed ascolti la fonia di cortesia del servizio puoi decidere di:\r\nchiudere subito la chiamata e ricevere un SMS di avviso quando il tuo amico tornerà contattabile\r\n (nel testo dell\'SMS sarà indicata l’ora in cui è tornato raggiungibile).\r\nse invece vuoi prenotare la richiamata automatica, attendendo in linea, quando la persona chiamata\r\n tornerà raggiungibile il tuo telefonino squillerà e, rispondendo, ChiamaOra di TIM richiamerà per \r\nte la persona cercata.\r\nLa richiamata sarà tariffata in base al tuo piano tariffario. Se invece hai attivato una delle opzioni\r\n tariffarie di TIM (voce, SMS, Internet), le richiamate sono tariffate secondo le condizioni previste da tali offerte.'),
(16, 9, 'Quanto costa il servizio LoSai e ChiamaOra?', '\r\nIl servizio è a tempo indeterminato salvo disattivazione che è possibile richiedere in qualsiasi \r\nmomento chiamando gratuitamente il numero 40920 dedicato ai servizi TIM e seguendo le istruzioni\r\ndella voce guida, oppure direttamente online.\r\n\r\nPer tutti i clienti già TIM ricaricabili il servizio è fruibile a 1,90€ ogni due mesi con addebito \r\nsul credito residuo (*). Per i clienti già TIM con abbonamento il servizio è fruibile a 48 cent al \r\nmese solare, con addebito bimestrale di 96 cent sulla fattura della linea mobile. I nuovi clienti \r\nche passano a TIM mantenendo il numero mobile o attivano una nuova linea, se richiedono contestualmente\r\n l’attivazione del servizio LoSai e ChiamaOra di TIM fruiscono del servizio in promozione GRATIS per il primo mese!\r\n\r\nI clienti TIM ricaricabili che hanno attivato LoSai e ChiamaOra di TIM entro l’ 1/02/2015 fruiscono del \r\nservizio al prezzo di 1,90€ ogni 4 mesi, fino alla scadenza dell’ultimo rinnovo (per conoscere tale data - \r\npersonalizzata per cliente - si può chiamare il numero gratuito 40920). Dopo il costo sarà di 1,90€ (IVA inclusa)\r\n ogni 2 mesi . Si ricorda, infatti, che dal 6 dicembre 2015 la tariffazione del servizio LoSai e ChiamaOra di TIM,\r\n anche per tali Clienti, avviene ogni 2 mesi anziché 4, al costo attuale di 1,90€ (*). \r\n\r\nI clienti TIM con abbonamento che hanno attivato LoSai e ChiamaOra di TIM entro l’ 1/02/2015 contestualmente\r\n all’attivazione di una nuova linea o al passaggio a TIM mantenendo il numero mobile, hanno il servizio Gratis\r\n per i primi 4 mesi e poi al costo di 48 cent al mese solare, con addebito bimestrale di 96 cent sul rendiconto \r\ntelefonico TIM.\r\n\r\n\r\n(*)Ti ricordiamo che se al momento del rinnovo il credito disponibile sulla tua TIM Card è inferiore al costo previsto, \r\nil credito residuo non verrà eroso. L’importo relativo al rinnovo del servizio verrà scalato alla prima ricarica utile\r\n'),
(17, 10, 'Come posso effettuare online un trasloco?', 'Il trasloco ti permette di trasferire la tua linea telefonica presso una nuova abitazione, \r\nnella stessa città o in una città diversa. Qualora la nuova abitazione si trovi nello stesso \r\ndistretto telefonico di quella di origine, salvo problemi tecnici, sarà possibile mantenere il vecchio numero telefonico.\r\n\r\nLa richiesta di trasloco può essere inviata direttamente online oppure chiamando il Servizio Clienti 187.\r\n'),
(18, 10, 'Come posso vedere lo stato delle mie richieste?', '\r\nRegistrandoti  in MyTIM Fisso  puoi verificare l’avanzamento delle tue richieste commerciali, amministrative e tecniche.'),
(19, 11, 'Perché dovrei registrarmi a MyTIM Fisso?', '\r\nInnanzi tutto perché è semplice e veloce, poi, perchè hai la possibilità di gestire autonomamente la tua linea!\r\nCompila il form di registrazione  per accedere ai nostri servizi.\r\nLa registrazione è competa e certificata se utilizzi un collegamento TIM associato al codice fiscale da registrare:\r\n\r\nse sei già un cliente internet TIM potrai accedere utilizzando username e password di Alice Mail.\r\nse effettui la registrazione fuori casa o da una linea non TIM, dovrai chiamare il numero gratuito 40 123 opzione 2.\r\n'),
(20, 11, 'Se la perdo o non la ricordo come posso recuperare la password della sezione MyTIM Fisso ?', 'Clicca su Non ricordi più Username o Password? Recuperali! all’interno di MyTIM Fisso.\r\n\r\nTi verrà chiesto di inserire il tuo username o il tuo codice fiscale, di inserire i\r\n 5 caratteri che visualizzi e di cliccare su "PROSEGUI". A questo punto ti verrà proposta\r\n la domanda segreta, a cui dovrai rispondere con la "risposta di controllo" inserita in fase \r\ndi registrazione. Ti verrà così inviata una nuova password nella casella email indicata in fase \r\ndi registrazione. “Se non ricordi la risposta alla domanda segreta”. Il sistema ti presenterà una \r\nmaschera in cui devi inserire il numero fattura (es. RW03910103), il numero di telefono ed il numero\r\n del bimestre di riferimento (es. 5/2013). A questo punto visualizzerai la tua username e riceverai la \r\nnuova password nella casella email indicata in fase di registrazione. \r\nIn alternativa, utilizza il servizio Chat, un operatore potrà darti assistenza.\r\n'),
(21, 14, 'Come leggo la fattura della linea fissa?', 'Nella prima pagina trovi:\r\n\r\ni dati principali dell’intestatario della linea di casa e della fattura\r\nil riepilogo degli abbonamenti attivi \r\nun box informativo con le proposte commerciali personalizzate relative a  offerte, prodotti, servizi \r\nl’informazione sulla modalità di pagamento (bollettino, addebito su conto corrente o su carta di credito)\r\nlo stato dei pagamenti\r\nuna guida veloce che riporta, attraverso semplici icone, i riferimenti per entrare in contatto con TIM: \r\nApp MyTIM Fisso per Smartphone e Tablet, sito www.tim.it (registrandoti alla sezione MyTIM Fisso), Social Network\r\n (Facebook, Youtube, Twitter, Google+), Servizio clienti 187, Negozi TIM.\r\nNella pagina del “Dettaglio dei costi”  le voci sono riordinate secondo una logica più vicina alle tue esigenze:  \r\n\r\nprima trovi gli eventuali “Importi Una Tantum” cioè quelli straordinari da pagare una sola volta, \r\npoi gli “Abbonamenti” (canoni delle offerte/prodotti/servizi attivi), \r\nsegue la descrizione “Telefonate e contenuti” (consumi di traffico, sms, contenuti digitali come video on demand,\r\n ebook, ecc) \r\ned infine la voce “Altri importi” (spese di produzione e spedizione fatture, le rate dei prodotti, le indennità\r\n di ritardato pagamento, interessi legali e moratori, consegna elenchi telefonici).\r\n'),
(22, 14, 'Che vantaggi ho con la fattura online?', 'Con la fattura online puoi:\r\n\r\navere chiarimenti sul significato delle voci in fattura\r\nvisualizzare il dettaglio di tutte le tue telefonate ed analizzarle utilizzando i filtri per tipo di chiamata, offerta, data, numero chiamato, fascia oraria, durata e costo;\r\ninviare segnalazioni al Servizio Clienti (ad es. segnalazione di errato addebito del traffico, richiesta di abilitazione di un servizio, ecc.) ottenendo la risposta in tempi brevi.\r\ninviare la fattura sulla tua casella emai\r\nvisualizzare e scaricare in formato excel i grafici del tuo traffico'),
(23, 14, 'Vorrei cambiare l’indirizzo e-mail su cui ricevere il messaggio della disponibilità online della mia fattura. Come posso fare?', 'Accedi con la tua username e password nella sezione “MyTIM Fisso”   "Il mio profilo “Gestione Profilo" e quindi clicca su “Gestione email” che si trova sulla stessa riga della voce "Email": qui potrai modificare l’indirizzo e-mail su cui ricevere il messaggio della disponibilità online della tua fattura, inserendone uno nuovo o selezionando come principale uno di quelli già presenti\r\n'),
(24, 18, 'Guida alla registrazione a MyTIM Mobile', 'Clicca sul tasto Registrati e procedi inserendo  il numero dell’utenza che vuoi registrare ed il codice di sicurezza visualizzabile nell’immagine. Riceverai un sms (*) con un codice temporaneo che dovrai inserire nell’apposito campo.\r\nLa tua username sarà il numero di telefonino. Ti sarà richiesto di scegliere una password di 8 cifre numeriche e di inserire il tuo indirizzo di posta elettronica. Riceverai quindi una mail da parte di TIM che ha come oggetto: Notifica da www.tim.it - verifica indirizzo email (se non la trovi  nella casella “Posta ricevuta” verifica se non sia all’interno della casella spam/posta indesiderata). Clicca sul link presente all’interno della mail per confermare l’indirizzo di posta elettronica fornito e completare così il processo di registrazione a MyTIM Mobile.\r\nCon le stesse username e password potrai accedere a MyTIM Mobile anche da smartphone e dall’APP MyTIM Mobile (in wifi).\r\n\r\n(*) assicurati che il tuo telefonino/tablet sia abilitato alla ricezione degli sms, altrimenti inserisci, temporaneamente, la sim in un telefonino abilitato\r\n'),
(25, 18, 'Come posso modificare la mia password di accesso?', 'Se desideri modificare la tua password entra direttamente in MyTIM Mobile. All’interno della sezione “I tuoi dati” potrai procedere alla Modifica Password.'),
(26, 19, 'Come posso verificare il mio traffico telefonico?', 'In MyTIM Mobile puoi verificare il dettaglio delle tue chiamate ed i relativi consumi. Se hai una linea prepagata puoi verificare il dettaglio del traffico a partire dal giorno precedente e fino agli ultimi 2 mesi rispetto alla data di consultazione mentre se hai un abbonamento, oltre a verificare il saldo dei consumi in corso di fatturazione, è possibile verificare online e scaricare il pdf del traffico telefonico effettuato entro 90 gg. dalla data di scadenza della fattura di riferimento . Per visualizzare l’elenco delle tue chiamate clicca qui.');

-- --------------------------------------------------------

--
-- Struttura della tabella `immagini_prodotto`
--

CREATE TABLE `immagini_prodotto` (
  `id` int(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `id_prodotto` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `immagini_prodotto`
--

INSERT INTO `immagini_prodotto` (`id`, `url`, `id_prodotto`) VALUES
(1, 'immagini/prodotti/im1.jpg', '1'),
(2, 'immagini/prodotti/im2.jpg', '2'),
(3, 'immagini/prodotti/im3.jpg', '3'),
(4, 'immagini/prodotti/im4.jpg', '4'),
(5, 'immagini/prodotti/im5.png', '5'),
(6, 'immagini/prodotti/im6.jpg', '6'),
(7, 'immagini/prodotti/im7.jpg', '7'),
(8, 'immagini/prodotti/im8.jpg', '8'),
(9, 'immagini/prodotti/im9.jpg', '9'),
(10, 'immagini/prodotti/im10.jpg', '10'),
(11, 'immagini/prodotti/im11.jpg', '11'),
(12, 'immagini/prodotti/im12.jpg', '12'),
(13, 'immagini/prodotti/im13.jpg', '13'),
(14, 'immagini/prodotti/im14.jpg', '14'),
(15, 'immagini/prodotti/im15.jpg', '15'),
(16, 'immagini/prodotti/im16.jpg', '16'),
(17, 'immagini/prodotti/im17.png', '17'),
(18, 'immagini/prodotti/im18.jpg', '18'),
(19, 'immagini/prodotti/im19.jpg', '19'),
(20, 'immagini/prodotti/im20.png', '20'),
(21, 'immagini/prodotti/im21.jpg', '21'),
(22, 'immagini/prodotti/im22.jpg', '22'),
(23, 'immagini/prodotti/im23.jpg', '23'),
(24, 'immagini/prodotti/im24.jpg', '24'),
(25, 'immagini/prodotti/im25.jpg', '25'),
(26, 'immagini/prodotti/im26.png', '26'),
(27, 'immagini/prodotti/im27.jpg', '27'),
(28, 'immagini/prodotti/im28.jpg', '28'),
(29, 'immagini/prodotti/im29.jpg', '29'),
(30, 'immagini/prodotti/im30.jpg', '30'),
(31, 'immagini/prodotti/im31.jpg', '31'),
(32, 'immagini/prodotti/im32.jpg', '32'),
(33, 'immagini/prodotti/im33.jpg', '33'),
(34, 'immagini/prodotti/im34.jpg', '34'),
(35, 'immagini/prodotti/im35.png', '35'),
(36, 'immagini/prodotti/im36.jpg', '36'),
(37, 'immagini/prodotti/im37.jpg', '37'),
(38, 'immagini/prodotti/im38.jpg', '38'),
(39, 'immagini/prodotti/im39.jpg', '39'),
(40, 'immagini/prodotti/im40.jpg', '40'),
(41, 'immagini/prodotti/im41.png', '41');

-- --------------------------------------------------------

--
-- Struttura della tabella `immagini_smartlife`
--

CREATE TABLE `immagini_smartlife` (
  `id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `id_smartlife` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `immagini_smartlife`
--

INSERT INTO `immagini_smartlife` (`id`, `url`, `id_smartlife`) VALUES
(42, 'immagini/SL/im42.jpg', 6),
(43, 'immagini/SL/im43.jpg', 7),
(44, 'immagini/SL/im44.jpg', 8),
(45, 'immagini/SL/im45.jpg', 9),
(46, 'immagini/SL/im46.jpg', 10),
(47, 'immagini/SL/im47.jpg', 11),
(48, 'immagini/SL/im48.jpg', 12),
(49, 'immagini/SL/im49.png', 13),
(50, 'immagini/SL/im50.png', 14),
(51, 'immagini/SL/im51.jpg', 15),
(52, 'immagini/SL/im52.jpg', 16),
(53, 'immagini/SL/im53.jpg', 17),
(54, 'immagini/SL/im54.jpg', 18);

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti`
--

CREATE TABLE `prodotti` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `categoria` int(11) NOT NULL,
  `rata` decimal(10,2) NOT NULL,
  `prezzo` decimal(10,2) NOT NULL,
  `produttore` varchar(100) NOT NULL,
  `in_promozione` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `prodotti`
--

INSERT INTO `prodotti` (`id`, `nome`, `categoria`, `rata`, `prezzo`, `produttore`, `in_promozione`) VALUES
(1, 'Sony XPERIA X', 1, '0.00', '629.90', 'Sony', 0),
(2, 'LG K8', 1, '0.00', '179.90', 'LG', 0),
(3, 'Huawei P9', 1, '0.00', '599.90', 'Huawei', 0),
(4, 'Huawei P9 Plus', 1, '0.00', '749.90', 'Huawei', 0),
(5, 'Samsung Galaxy J5', 1, '0.00', '229.90', 'Samsung', 1),
(6, 'iPhone 6s', 1, '0.00', '789.90', 'Apple', 0),
(7, 'iPhone SE 16 GB', 1, '0.00', '509.90', 'Apple', 0),
(8, 'ZTE Blade L5', 1, '0.00', '79.90', 'ZTE', 0),
(9, 'Microsoft Lumia 950', 1, '0.00', '499.90', 'Microsoft', 1),
(10, 'Samsung Galaxy S6 32 GB', 1, '0.00', '639.90', 'Samsung', 1),
(11, 'iPad Pro 128 GB', 2, '0.00', '1249.90', 'Apple', 0),
(12, 'iPad Pro 9.7" 32GB', 2, '0.00', '839.90', 'Apple', 0),
(13, 'iPad Pro 9.7" 128GB', 2, '0.00', '1199.90', 'Apple', 0),
(14, 'Samsung Galaxy TAB A 9.7', 2, '0.00', '299.90', 'Samsung', 1),
(15, 'Huawei MediaPad T1 10 LTE', 2, '0.00', '249.90', 'Huawei', 0),
(16, 'iPad Mini 4 16GB', 2, '0.00', '529.90', 'Apple', 0),
(17, 'Samsung Galaxy TAB S2 9.7 LTE', 2, '0.00', '539.90', 'Samsung', 1),
(18, 'Samsung Galaxy Tab Pro S12', 2, '0.00', '1299.90', 'Samsung', 0),
(19, 'iPad Mini 3 Wi-Fi', 2, '0.00', '519.90', 'Apple', 0),
(20, 'Samsung Galaxy Note 10.1 4G LTE', 2, '0.00', '479.00', 'Samsung', 0),
(21, ' Repeater Wi-Fi ZyXEL AC750', 3, '0.00', '49.90', 'ZyXEL', 0),
(22, 'FRITZ!WLAN Repeater 1750E', 3, '0.00', '89.90', 'AVM', 0),
(23, 'TIM Modem Wi-Fi Car Pack 4G', 3, '0.00', '99.90', 'TIM', 0),
(24, ' Modem ADSL Wi-Fi ', 3, '0.00', '69.00', 'TIM', 0),
(25, 'Wi-Fi Bridge Technicolor', 3, '0.00', '79.90', 'Technicolor', 0),
(26, 'Powerline Adapter', 3, '0.00', '49.00', 'TIM', 1),
(27, 'Tecnoware ERA Plus 900', 3, '0.00', '79.90', 'Tecnoware', 0),
(28, 'Modem Fibra', 3, '0.00', '99.00', 'TIM', 0),
(29, 'Repeater ZyXEL N300', 3, '0.00', '39.00', 'ZyXEL', 0),
(30, 'Modem TIM 4G WI-FI', 3, '0.00', '79.90', 'TIM', 0),
(31, 'TIMTag', 4, '0.00', '129.00', 'TIM', 0),
(32, 'D-Link SmartHome Starter Kit', 4, '0.00', '159.90', 'D-Link', 0),
(33, 'Apple Watch Sport 38', 4, '0.00', '369.90', 'Apple', 0),
(34, 'Pack TIMvision&Chromecast', 4, '0.00', '39.00', 'TIM', 0),
(35, 'Cassa Nokia MD 12', 4, '0.00', '49.90', 'Nokia', 0),
(36, 'Samsung Smart TV 50" + Soundbar con TIMvision', 4, '0.00', '938.88', 'Samsung', 0),
(37, 'ZTE SPro 2', 4, '0.00', '699.90', 'ZTE', 0),
(38, 'Samsung Galaxy View 18.4" LTE', 4, '0.00', '799.90', 'Samsung', 0),
(39, 'WeR@Home', 4, '0.00', '199.00', 'Essence', 0),
(40, 'Decoder TIMVision', 4, '0.00', '49.00', 'TIM', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `smartlife`
--

CREATE TABLE `smartlife` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descrizione` text,
  `sottotitolo` varchar(200) DEFAULT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `smartlife`
--

INSERT INTO `smartlife` (`id`, `nome`, `descrizione`, `sottotitolo`, `id_categoria`) VALUES
(1, 'TV', 'Scopri il grande cinema, le serie più appassionanti, i cartoni animati più amati, lo sport\r\ne tanto altro ancora su TV, PC, tablet e smartphone', 'Divertimento senza limiti', 1),
(4, 'TIMGames', 'Sparatutto, sport estremi, i migliori Classici e molto altro ancora...\nCon TIMgames hai a disposizione centinaia di giochi per il tuo\nsmartphone e tablet, per divertirti dove e quando vuoi.', 'Mettiti in gioco, una nuova sfida ti aspetta!', 1),
(2, 'TIMMusic', 'Ascolta milioni di brani in streaming, tutte le novit&agrave; discografiche,\nanteprime esclusive e tante playlist di tutti i generi. Su smartphone\nsenza consumare GB, pc e tablet. Quando vuoi e quanto vuoi.', 'La colonna sonora della tua vita', 1),
(3, 'TIMReading', 'Porta sempre con te su Smartphone e Tablet i tuoi eBook preferiti,\nsegui tutte le tue passioni scegliendo tra i magazine pi&ugrave amati e sfoglia\nil tuo quotidiano dalle prime ore del mattino.\nSu TIMreading trovi ci&ograve; che ami leggere, dove e quando vuoi.', 'Leggi quando vuoi, cosa vuoi', 1),
(5, 'Serie A TIM', 'Vivi il meglio della Serie A TIM e i migliori momenti del Campionato 2015/2016\r\ncon tutte le notizie, i video-goal, le sintesi sul tuo Smartphone o Tablet\r\ne senza consumare GB. L’unica App ufficiale della Serie A TIM.\r\nScarica l’App e vivi la magia del calcio!', 'Il calcio è di chi lo ama!', 1),
(6, 'Samsung Galaxy Gear S con SIM', 'Un elegante display Super AMOLED\r\n curvo per una vestibilità ottimale, \r\nschermate personalizzabili e cinturini \r\nintercambiabili per esprimere al meglio il proprio stile', NULL, 2),
(7, 'Polar Loop H7 HR', 'In abbinamento con Polar sensore frequenza Cardiaca. \r\nPer chi desidera misurare la propria attività 24 ore \r\nsu 24 ed essere guidato al raggiungimento di obiettivi giornalieri', NULL, 2),
(8, 'Polar HR', 'Utilizzato con un\'applicazione mobile per lo sport o con un training computer Polar compatibile, \r\nil sensore visualizza in modo estremamente preciso la frequenza cardiaca in tempo reale durante l’allenamento', NULL, 2),
(9, 'Ihealth HS5', 'Registra le calorie e le attività giornaliere,\r\n pianifica gli obiettivi di peso. Organizza le registrazioni,\r\n i grafici, lo storico delle letture e visualizza le tendenze', NULL, 2),
(10, 'Samsung Galaxy Gear Fit', 'Tiene sempre traccia delle attività durante la giornata ed è sempre pronto \r\nad accompagnarti grazie al suo design innovativo, \r\nconfortevole ed ultraleggero ed in più resistente all’acqua ed alla polvere', NULL, 2),
(11, 'Sony Smartband FE', '\r\nUn innovativo braccialetto da polso \r\nin grado di registrare automaticamente\r\n le tue attività fisiche, sociali e di intrattenimento', NULL, 2),
(12, 'WellUp', 'Un\'app gratuita sviluppata come fosse un diario personale, \r\nper disporre in ogni momento di tutte le informazioni sui \r\ncontrolli medici preventivi da effettuare periodicamente per sé e per tutta la famiglia', NULL, 2),
(13, 'TIM Tag', 'TIMTag, è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care. \r\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.', NULL, 3),
(14, 'TIM Home Connect', 'La soluzione ideale per gestire tutti i sistemi di domotica presenti nella tua casa,\r\n dalla semplice caldaia domestica, ai sistemi di protezione della casa, ai più avanzati sistemi di monitoraggio.', NULL, 3),
(15, 'D-Link SmartHome', 'D-Link SmartHome Starter Kit ti offre la possibilità di impostare,\r\n controllare, monitorare e automatizzare la tua casa ovunque ti trovi.', NULL, 3),
(16, 'Vita digitale o vita reale?', 'Accedere ai servizi, pagare per una sottoscrizione o \r\nper un acquisto, le transazioni digitali sono ormai parte della nostra \r\nvita quotidiana e si stanno via via diffondendo. L’affidabilità è una componente cruciale. \r\nLo storage di denaro, oltre che di dati personali, può essere più comodo e anche più sicuro', NULL, 4),
(17, '\r\nFirma digitale', '\r\nLa fiducia che una firma digitale deve assicurare è \r\nben superiore a quella della tradizionale firma manuale.\r\n Una chiave privata conosciuta solo dalla persona autorizzata \r\na farne uso può servire persino a provarne l\'identità. Si attendono sviluppi molto interessanti e TIM è in primo piano', NULL, 4),
(18, 'SIM', 'Dalla nascita del sistema di comunicazione radiomobile GSM,\r\n è la più promettente applicazione della tecnologia Smart Card. Garantisce la sicurezza di tutte le comunicazioni \r\ne garantirà in futuro l\'identità personale. TIM è impegnata in primo piano sulle ricerche in questo campo', NULL, 4);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `assistenza`
--
ALTER TABLE `assistenza`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `categorie_assistenza`
--
ALTER TABLE `categorie_assistenza`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `categorie_prodotti`
--
ALTER TABLE `categorie_prodotti`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `categorie_smartlife`
--
ALTER TABLE `categorie_smartlife`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `immagini_prodotto`
--
ALTER TABLE `immagini_prodotto`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `immagini_smartlife`
--
ALTER TABLE `immagini_smartlife`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `prodotti`
--
ALTER TABLE `prodotti`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `smartlife`
--
ALTER TABLE `smartlife`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `assistenza`
--
ALTER TABLE `assistenza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT per la tabella `categorie_assistenza`
--
ALTER TABLE `categorie_assistenza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `categorie_prodotti`
--
ALTER TABLE `categorie_prodotti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `categorie_smartlife`
--
ALTER TABLE `categorie_smartlife`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT per la tabella `immagini_prodotto`
--
ALTER TABLE `immagini_prodotto`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT per la tabella `immagini_smartlife`
--
ALTER TABLE `immagini_smartlife`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT per la tabella `smartlife`
--
ALTER TABLE `smartlife`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
