.class final Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl$3;
.super Ljava/lang/Object;
.source "CaptureIndicatorControllerImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;->addListener(Lcom/android/camera/ui/captureindicator/CaptureIndicatorController$Listener;)Lcom/google/android/apps/camera/async/SafeCloseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;

.field private synthetic val$listener:Lcom/android/camera/ui/captureindicator/CaptureIndicatorController$Listener;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;Lcom/android/camera/ui/captureindicator/CaptureIndicatorController$Listener;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl$3;->this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;

    iput-object p2, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl$3;->val$listener:Lcom/android/camera/ui/captureindicator/CaptureIndicatorController$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl$3;->this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;

    invoke-static {v0}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;->access$000(Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl$3;->val$listener:Lcom/android/camera/ui/captureindicator/CaptureIndicatorController$Listener;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method
