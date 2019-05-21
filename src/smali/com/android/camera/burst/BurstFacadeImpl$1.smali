.class final Lcom/android/camera/burst/BurstFacadeImpl$1;
.super Ljava/lang/Object;
.source "BurstFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstFacadeImpl;->startBurst$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A92JDTQN4OR57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMS92JEHGM6QR1C9M6AGR1E1Q7ASJ5ADIN6SR9DTN46SJ5C5Q6USHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O948PGM6QBECSTKIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOJLE9PN8BQ2ELP76T2CD5R6AK3ICLR6IPBN8DNMST3IDTM6OPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ5AIA3DTN78SJFDHM6ASHR55666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJM___(Lcom/android/camera/burst/BurstFacade$Source;Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;Lcom/android/camera/session/CaptureSessionManager;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/one/OneCamera$Facing;ILcom/android/camera/burst/BurstLivePreviewController;Lcom/android/camera/hdrplus/HdrPlusSessionModule;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/BurstFacadeImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacadeImpl;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeImpl$1;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl$1;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/burst/BurstFacadeImpl;->access$002(Lcom/android/camera/burst/BurstFacadeImpl;Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/burst/BurstFacadeRunner;

    .line 187
    return-void
.end method
