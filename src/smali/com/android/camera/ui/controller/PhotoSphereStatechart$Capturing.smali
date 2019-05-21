.class Lcom/android/camera/ui/controller/PhotoSphereStatechart$Capturing;
.super Lcom/android/camera/ui/controller/PhotoSphereState;
.source "PhotoSphereStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/PhotoSphereStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Capturing"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/PhotoSphereStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/PhotoSphereStatechart;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/camera/ui/controller/PhotoSphereStatechart$Capturing;->this$0:Lcom/android/camera/ui/controller/PhotoSphereStatechart;

    invoke-direct {p0}, Lcom/android/camera/ui/controller/PhotoSphereState;-><init>()V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/android/camera/ui/controller/PhotoSphereStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter capturing state."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoSphereStatechart$Capturing;->this$0:Lcom/android/camera/ui/controller/PhotoSphereStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/PhotoSphereStatechart;->access$100(Lcom/android/camera/ui/controller/PhotoSphereStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hide()V

    .line 43
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/android/camera/ui/controller/PhotoSphereStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit capturing state."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoSphereStatechart$Capturing;->this$0:Lcom/android/camera/ui/controller/PhotoSphereStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/PhotoSphereStatechart;->access$100(Lcom/android/camera/ui/controller/PhotoSphereStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->show()V

    .line 49
    return-void
.end method

.method public onStopCapturing()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
