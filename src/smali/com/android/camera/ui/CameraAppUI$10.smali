.class final Lcom/android/camera/ui/CameraAppUI$10;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CameraAppUI;->setShutterButtonEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/CameraAppUI;

.field private synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraAppUI;Z)V
    .locals 0

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI$10;->this$0:Lcom/android/camera/ui/CameraAppUI;

    iput-boolean p2, p0, Lcom/android/camera/ui/CameraAppUI$10;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$10;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$800(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/BottomBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ui/CameraAppUI$10;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBar;->setShutterButtonEnabled(Z)V

    .line 1884
    return-void
.end method
