.class public Lcom/android/camera/ui/controller/PhotoVideoStatechart;
.super Lcom/android/camera/ui/controller/PhotoVideoState;
.source "PhotoVideoStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/controller/PhotoVideoStatechart$VideoRecording;,
        Lcom/android/camera/ui/controller/PhotoVideoStatechart$VideoReady;,
        Lcom/android/camera/ui/controller/PhotoVideoStatechart$Photo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final hasUserSwipedToVideo$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private isRecording:Z

.field private optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

.field private photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "PhotoVideoChart"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/async/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/ui/controller/PhotoVideoState;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->hasUserSwipedToVideo$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    return-object v0
.end method

.method static synthetic access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFA1K6UT3FAPKM8PBFADQ62T35CDK62SJK7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->hasUserSwipedToVideo$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/controller/PhotoVideoStatechart;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->isRecording:Z

    return p1
.end method


# virtual methods
.method public initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 37
    iput-object p2, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->photoVideoModeSwitchView:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    .line 38
    return-void
.end method

.method public final isRecording()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->isRecording:Z

    return v0
.end method
