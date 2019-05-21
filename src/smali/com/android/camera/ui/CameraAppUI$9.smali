.class final Lcom/android/camera/ui/CameraAppUI$9;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraAppUI;)V
    .locals 0

    .prologue
    .line 1608
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI$9;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$9;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$1900(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$9;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$1800(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/util/CameraMode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->onModeSelected(Lcom/android/camera/util/CameraMode;)V

    .line 1612
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$9;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->showMenuButton()V

    .line 1613
    return-void
.end method
