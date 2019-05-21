.class final Lcom/android/camera/app/CameraActivityControllerImpl$5;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Lcom/android/camera/ui/PrimaryShutterButton$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraActivityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$5;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$5;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1300(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/stats/CameraActivitySession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/CameraActivitySession;->recordTimeToShutterButtonFirstDraw()V

    .line 794
    return-void
.end method

.method public final onEnabled()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$5;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1300(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/stats/CameraActivitySession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/CameraActivitySession;->recordTimeToShutterButtonFirstEnabled()V

    .line 799
    return-void
.end method
