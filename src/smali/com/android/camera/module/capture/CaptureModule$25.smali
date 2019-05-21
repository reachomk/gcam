.class final Lcom/android/camera/module/capture/CaptureModule$25;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModule;
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
        "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$25;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1589
    check-cast p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    .line 2592
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$25;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0, p1}, Lcom/android/camera/module/capture/CaptureModule;->access$1900(Lcom/android/camera/module/capture/CaptureModule;Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;)V

    .line 1589
    return-void
.end method
