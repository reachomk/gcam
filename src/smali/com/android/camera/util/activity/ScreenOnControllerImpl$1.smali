.class final Lcom/android/camera/util/activity/ScreenOnControllerImpl$1;
.super Ljava/lang/Object;
.source "ScreenOnControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/activity/ScreenOnControllerImpl;-><init>(Lcom/google/android/apps/camera/async/MainThread;Landroid/view/Window;Ljava/util/concurrent/ScheduledExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/util/activity/ScreenOnControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/util/activity/ScreenOnControllerImpl;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$1;->this$0:Lcom/android/camera/util/activity/ScreenOnControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$1;->this$0:Lcom/android/camera/util/activity/ScreenOnControllerImpl;

    sget v1, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->NO_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    invoke-static {v0, v1}, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->access$002$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQN8QBC5TGM6T39EPKN8U9FADHN4PB5DP7MSGRFDPQ74RRCDHIN4IBDE1M3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTBKD5M2UOB3EHKNCQBKF4NL6ORICLIMSJRE8DNMST3IDTM6OPBI95MN0R14ADHN4PB5DP7MSJBFCHIJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLEHKMOBR1CDQ6ITJ9EHSIUKR3E9IMARIFDP1MURJKE9NMOR35E94MQS3C4H9M6SJ5CLN4URIDDTI6AEO_(Lcom/android/camera/util/activity/ScreenOnControllerImpl;I)I

    .line 69
    iget-object v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$1;->this$0:Lcom/android/camera/util/activity/ScreenOnControllerImpl;

    invoke-static {v0}, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->access$100(Lcom/android/camera/util/activity/ScreenOnControllerImpl;)V

    .line 70
    return-void
.end method
