.class final Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$4;
.super Ljava/lang/Object;
.source "VideoPlayerUiImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic this$0$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNCQB4CLNN0R31F5IN4BRMD5INEBQMD5I6ARQGDHGNIPBIALKKIRBGDGTG____:Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$4;->this$0$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNCQB4CLNN0R31F5IN4BRMD5INEBQMD5I6ARQGDHGNIPBIALKKIRBGDGTG____:Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 106
    :goto_0
    return v1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$4;->this$0$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNCQB4CLNN0R31F5IN4BRMD5INEBQMD5I6ARQGDHGNIPBIALKKIRBGDGTG____:Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->access$100$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUTJ9CHIMUS3CC5SMASHFEPKMATPFAPKM8PBFA1M62UB5E9AMIIBDE1M3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TR6IP35DTO6OOBPCLP2UORFDPQ74RRCDHIN4BQ3DTN78SJFDHPL6T31EHIM6Q31E9Q3M___(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onScreenTapped()V

    goto :goto_0
.end method
