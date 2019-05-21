.class public Lcom/android/camera/ui/controller/CountdownStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CountdownStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/controller/CountdownStatechart$CountingDown;,
        Lcom/android/camera/ui/controller/CountdownStatechart$Ready;
    }
.end annotation


# instance fields
.field private evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

.field private isCountingDown$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([B)V

    return-void
.end method

.method static synthetic access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DNNARJKCHNNERIJEHGN8PB3D1GN4T1R55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJM___(Lcom/android/camera/ui/controller/CountdownStatechart;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/controller/CountdownStatechart;->isCountingDown$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/CountdownStatechart;)Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/controller/CountdownStatechart;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/CountdownStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/controller/CountdownStatechart;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    return-object v0
.end method


# virtual methods
.method public initialize$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRDDTI6ASRND5Q66Q1FA1K6UT3FAPKM8PBF9LNM8PAJETKN8OR8APKMATPR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR5EPHMURBG5T2NCGRFDLO5CQB5ET1MURJKE9NMOR35E8TIILG_(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/camera/ui/controller/CountdownStatechart;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    .line 25
    iput-object p2, p0, Lcom/android/camera/ui/controller/CountdownStatechart;->isCountingDown$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 26
    iput-object p3, p0, Lcom/android/camera/ui/controller/CountdownStatechart;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 27
    return-void
.end method
