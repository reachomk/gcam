.class Lcom/android/camera/ui/controller/CaptureStatechart$LensBlurState;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CaptureStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/CaptureStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LensBlurState"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/CaptureStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CaptureStatechart;)V
    .locals 1

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/camera/ui/controller/CaptureStatechart$LensBlurState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter Lens Blur state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$LensBlurState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$400(Lcom/android/camera/ui/controller/CaptureStatechart;)V

    .line 145
    return-void
.end method

.method public exitToyBoxMode()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method
