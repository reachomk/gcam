.class Lcom/android/camera/ui/controller/CameraUiStatechart$Filmstrip;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CameraUiStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/CameraUiStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Filmstrip"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/CameraUiStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CameraUiStatechart;)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraUiStatechart$Filmstrip;->this$0:Lcom/android/camera/ui/controller/CameraUiStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/android/camera/ui/controller/CameraUiStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip state enter"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiStatechart$Filmstrip;->this$0:Lcom/android/camera/ui/controller/CameraUiStatechart;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/controller/CameraUiStatechart;->access$200(Lcom/android/camera/ui/controller/CameraUiStatechart;I)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiStatechart$Filmstrip;->this$0:Lcom/android/camera/ui/controller/CameraUiStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraUiStatechart;->access$300(Lcom/android/camera/ui/controller/CameraUiStatechart;)Lcom/android/camera/ui/PhotoVideoPaginator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setImportantForAccessibility(I)V

    .line 83
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/android/camera/ui/controller/CameraUiStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip state exit"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiStatechart$Filmstrip;->this$0:Lcom/android/camera/ui/controller/CameraUiStatechart;

    iget-object v1, p0, Lcom/android/camera/ui/controller/CameraUiStatechart$Filmstrip;->this$0:Lcom/android/camera/ui/controller/CameraUiStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/CameraUiStatechart;->access$400(Lcom/android/camera/ui/controller/CameraUiStatechart;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/controller/CameraUiStatechart;->access$200(Lcom/android/camera/ui/controller/CameraUiStatechart;I)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiStatechart$Filmstrip;->this$0:Lcom/android/camera/ui/controller/CameraUiStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraUiStatechart;->access$300(Lcom/android/camera/ui/controller/CameraUiStatechart;)Lcom/android/camera/ui/PhotoVideoPaginator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PhotoVideoPaginator;->setImportantForAccessibility(I)V

    .line 91
    return-void
.end method

.method public onFilmstripClosed()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onFilmstripClosed()V

    .line 97
    return-void
.end method
