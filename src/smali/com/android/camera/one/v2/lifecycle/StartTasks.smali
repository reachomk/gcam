.class public Lcom/android/camera/one/v2/lifecycle/StartTasks;
.super Ljava/lang/Object;
.source "StartTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/lifecycle/StartTasks$Noop;
    }
.end annotation


# instance fields
.field private final activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 0

    .prologue
    .line 2074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2075
    iput-object p1, p0, Lcom/android/camera/one/v2/lifecycle/StartTasks;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 2076
    return-void
.end method

.method public static forCommand(Lcom/android/camera/one/v2/command/CameraCommand;Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/one/v2/lifecycle/StartTask;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/camera/one/v2/lifecycle/StartTasks$2;

    invoke-direct {v0, p1, p0}, Lcom/android/camera/one/v2/lifecycle/StartTasks$2;-><init>(Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/android/camera/one/v2/command/CameraCommand;)V

    return-object v0
.end method

.method public static forRunnable(Ljava/lang/Runnable;)Lcom/android/camera/one/v2/lifecycle/StartTask;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/android/camera/one/v2/lifecycle/StartTasks$1;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/lifecycle/StartTasks$1;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static noop()Lcom/android/camera/one/v2/lifecycle/StartTask;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/android/camera/one/v2/lifecycle/StartTasks$Noop;->access$000()Lcom/android/camera/one/v2/lifecycle/StartTasks$Noop;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public playVideo(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/camera/one/v2/lifecycle/StartTasks;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/app/AppController;->playVideo(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1084
    return-void
.end method
