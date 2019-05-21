.class final Lcom/android/camera/module/capture/CaptureModule$6;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$6;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 529
    check-cast p1, Ljava/lang/Boolean;

    .line 1532
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$6;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$900(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/util/flags/Flags;

    invoke-static {}, Lcom/android/camera/module/capture/CaptureModule;->access$800$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMCR31CTPIUH35CPGNAR3K8PGMOSR58PM62PPR()Lcom/android/camera/util/flags/CameraFlag;

    .line 529
    :cond_0
    return-void
.end method
