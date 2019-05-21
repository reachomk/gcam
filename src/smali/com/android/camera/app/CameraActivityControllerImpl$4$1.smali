.class final Lcom/android/camera/app/CameraActivityControllerImpl$4$1;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraActivityControllerImpl$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/app/CameraActivityControllerImpl$4;

.field private synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl$4;I)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$4$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$4;

    iput p2, p0, Lcom/android/camera/app/CameraActivityControllerImpl$4$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$4$1;->val$index:I

    .line 768
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$4$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$4;

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl$4;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1100(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->showFilmstrip()V

    .line 770
    return-void
.end method
