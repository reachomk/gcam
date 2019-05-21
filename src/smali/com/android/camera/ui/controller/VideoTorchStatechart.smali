.class public Lcom/android/camera/ui/controller/VideoTorchStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "VideoTorchStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/controller/VideoTorchStatechart$On;,
        Lcom/android/camera/ui/controller/VideoTorchStatechart$Off;,
        Lcom/android/camera/ui/controller/VideoTorchStatechart$LoadingSetting;
    }
.end annotation


# instance fields
.field private flashProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

.field private torchOffValue:Ljava/lang/String;

.field private torchOnValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[B)V

    return-void
.end method

.method static synthetic access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFAPKM8PBFAHNN4OR8ADQ62T35CDK62SJK7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_(Lcom/android/camera/ui/controller/VideoTorchStatechart;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart;->flashProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/VideoTorchStatechart;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart;->torchOnValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/VideoTorchStatechart;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/camera/ui/controller/VideoTorchStatechart;->postSetOn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/controller/VideoTorchStatechart;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart;->torchOffValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/controller/VideoTorchStatechart;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/camera/ui/controller/VideoTorchStatechart;->postSetOff()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/controller/VideoTorchStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    return-object v0
.end method

.method private final postSetOff()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/ui/controller/VideoTorchStatechart$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/controller/VideoTorchStatechart$2;-><init>(Lcom/android/camera/ui/controller/VideoTorchStatechart;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method private final postSetOn()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/ui/controller/VideoTorchStatechart$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/controller/VideoTorchStatechart$1;-><init>(Lcom/android/camera/ui/controller/VideoTorchStatechart;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method


# virtual methods
.method public initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9LGMIRIKD1P6AOB47D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ3AC5R62BRCC5N6EBQJEHP6IRJ77D66KOBMC4NMOOBECSNL6T3ID5N6EEP9AO______(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/async/Observable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 31
    iput-object p2, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 32
    iput-object p3, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart;->flashProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 33
    iput-object p4, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart;->torchOnValue:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart;->torchOffValue:Ljava/lang/String;

    .line 35
    return-void
.end method
