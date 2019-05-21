.class final Lcom/android/camera/selfieflash/SelfieFlashControllerImpl$1;
.super Ljava/lang/Object;
.source "SelfieFlashControllerImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;-><init>(Lcom/google/android/apps/camera/async/AddOnlyLifetime;Lcom/android/camera/ui/ShutterButtonHolder;Lcom/android/camera/widget/CameraSwitchButton;Lcom/android/camera/ui/CaptureAnimationOverlay;Lcom/android/camera/widget/DarkLightImageButton;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/ui/WindowBrightness;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl$1;->this$0:Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 65
    .line 1068
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl$1;->this$0:Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;

    invoke-static {v0}, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->access$000(Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;)V

    .line 65
    return-void
.end method
