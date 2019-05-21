.class final Lcom/android/camera/module/capture/CaptureModule$16;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule;->startBurst(Lcom/android/camera/burst/BurstFacade$Source;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$16;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAndStartEmpty$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$16;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    sget-object v1, Lcom/android/camera/session/CaptureSession$SessionType;->BURST:Lcom/android/camera/session/CaptureSession$SessionType;

    invoke-static {v0, v1}, Lcom/android/camera/module/capture/CaptureModule;->access$2200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUOR1E1Q7ASJ55T1M2S3KELP6AJBFCHQMOP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN28KR5EDPMIRREAHSN0P9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMSEO_(Lcom/android/camera/module/capture/CaptureModule;Lcom/android/camera/session/CaptureSession$SessionType;)Lcom/android/camera/session/StackableSession;

    move-result-object v0

    return-object v0
.end method
