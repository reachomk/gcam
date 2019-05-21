.class final Lcom/android/camera/selfieflash/SelfieFlashControllerImpl$2;
.super Ljava/lang/Object;
.source "SelfieFlashControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl$2;->this$0:Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl$2;->this$0:Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;

    invoke-static {v0}, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->access$100(Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;)V

    .line 109
    return-void
.end method
