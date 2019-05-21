.class Lcom/android/camera/ui/controller/CaptureStatechart$PhotoSphereState;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CaptureStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/CaptureStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoSphereState"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/CaptureStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CaptureStatechart;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoSphereState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter PhotoSphere state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoSphereState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$600(Lcom/android/camera/ui/controller/CaptureStatechart;)V

    .line 95
    invoke-static {}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set rotation to crossfade"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoSphereState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$700(Lcom/android/camera/ui/controller/CaptureStatechart;I)V

    .line 97
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit PhotoSphere state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set rotation to jumpcut"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoSphereState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    iget-object v1, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoSphereState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$800(Lcom/android/camera/ui/controller/CaptureStatechart;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$700(Lcom/android/camera/ui/controller/CaptureStatechart;I)V

    .line 104
    return-void
.end method

.method public exitToyBoxMode()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
