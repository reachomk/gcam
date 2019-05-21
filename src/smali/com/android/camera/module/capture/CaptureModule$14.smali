.class final Lcom/android/camera/module/capture/CaptureModule$14;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule;->updateAutoHdrPlusIndicator(Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;

.field private synthetic val$animated:Z

.field private synthetic val$decision:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;Z)V
    .locals 0

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$14;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModule$14;->val$decision:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    iput-boolean p3, p0, Lcom/android/camera/module/capture/CaptureModule$14;->val$animated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$14;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$2000(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/module/capture/CaptureModuleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$14;->val$decision:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleUI;->setAutoHdrPlusIndicator$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNK2TBKDT36OOBJD1468SIGDHQN6H35CDKN6QBFDOTLKAAM(Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;)V

    .line 744
    return-void
.end method
