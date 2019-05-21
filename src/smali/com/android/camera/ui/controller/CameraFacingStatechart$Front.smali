.class Lcom/android/camera/ui/controller/CameraFacingStatechart$Front;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CameraFacingStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/CameraFacingStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Front"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/CameraFacingStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CameraFacingStatechart;)V
    .locals 1

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraFacingStatechart$Front;->this$0:Lcom/android/camera/ui/controller/CameraFacingStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/android/camera/ui/controller/CameraFacingStatechart;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter FrontCamera state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/android/camera/ui/controller/CameraFacingStatechart;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit FrontCamera state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public toggleCamera()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraFacingStatechart$Front;->this$0:Lcom/android/camera/ui/controller/CameraFacingStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraFacingStatechart;->access$000(Lcom/android/camera/ui/controller/CameraFacingStatechart;)Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->prepareSwitchToBack()V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraFacingStatechart$Front;->this$0:Lcom/android/camera/ui/controller/CameraFacingStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraFacingStatechart;->access$000(Lcom/android/camera/ui/controller/CameraFacingStatechart;)Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    move-result-object v0

    .line 1086
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraFacingStatechart$Front;->this$0:Lcom/android/camera/ui/controller/CameraFacingStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraFacingStatechart;->access$000(Lcom/android/camera/ui/controller/CameraFacingStatechart;)Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->animateIcon()V

    .line 47
    return-void
.end method
