.class public final Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;
.super Ljava/lang/Object;
.source "PanoramaShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PanoramaShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ElevationAnimator"
.end annotation


# instance fields
.field private isAnimatingForward:Z

.field private final maxValue:I

.field private final minValue:I

.field private synthetic this$0:Lcom/android/camera/ui/PanoramaShutterButton;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PanoramaShutterButton;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    iput-object p1, p0, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;->this$0:Lcom/android/camera/ui/PanoramaShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-lez p2, :cond_0

    .line 88
    iput-boolean v1, p0, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;->isAnimatingForward:Z

    .line 89
    iput v1, p0, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;->minValue:I

    .line 90
    iput p2, p0, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;->maxValue:I

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;->isAnimatingForward:Z

    .line 93
    iput p2, p0, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;->minValue:I

    .line 94
    iput v1, p0, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;->maxValue:I

    goto :goto_0
.end method


# virtual methods
.method public final animate(F)V
    .locals 3

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;->isAnimatingForward:Z

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;->this$0:Lcom/android/camera/ui/PanoramaShutterButton;

    iget v1, p0, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;->minValue:I

    iget v2, p0, Lcom/android/camera/ui/PanoramaShutterButton$ElevationAnimator;->maxValue:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/ui/PanoramaShutterButton;->updateElevationShadow(FII)V

    .line 108
    return-void

    .line 106
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    goto :goto_0
.end method
