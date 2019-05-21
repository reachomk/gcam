.class final Lcom/android/camera/error/ShotFailureHandlerImpl;
.super Ljava/lang/Object;
.source "ShotFailureHandlerImpl.java"

# interfaces
.implements Lcom/android/camera/error/ShotFailureHandler;


# static fields
.field private static final TOAST_FOR_BUGREPORT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T2MSPQ6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final flags:Lcom/android/camera/util/flags/Flags;

.field private final log:Lcom/android/camera/debug/Logger;

.field private final toaster:Lcom/android/camera/debug/Toaster;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/android/camera/util/flags/CameraFlag;

    const-string v1, "camera.dbg.bugtoast"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/flags/CameraFlag;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lcom/android/camera/error/ShotFailureHandlerImpl;->TOAST_FOR_BUGREPORT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T2MSPQ6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/util/flags/Flags;Lcom/android/camera/debug/Toaster;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/error/ShotFailureHandlerImpl;->appContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/android/camera/error/ShotFailureHandlerImpl;->flags:Lcom/android/camera/util/flags/Flags;

    .line 31
    iput-object p3, p0, Lcom/android/camera/error/ShotFailureHandlerImpl;->toaster:Lcom/android/camera/debug/Toaster;

    .line 32
    const-string v0, "ShotFailureHdlr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/error/ShotFailureHandlerImpl;->log:Lcom/android/camera/debug/Logger;

    .line 33
    return-void
.end method


# virtual methods
.method public final onShotCanceled()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/error/ShotCanceledException;

    invoke-direct {v0}, Lcom/android/camera/error/ShotCanceledException;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/android/camera/error/ShotFailureHandlerImpl;->log:Lcom/android/camera/debug/Logger;

    const-string v2, "Shot Canceled!"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iget-object v1, p0, Lcom/android/camera/error/ShotFailureHandlerImpl;->appContext:Landroid/content/Context;

    const-string v2, "com.android.camera.silentfeedback.SILENT_FEEDBACK"

    invoke-static {v1, v0, v2}, Lcom/android/camera/silentfeedback/SilentFeedback;->sendSilentFeedback(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 54
    return-void
.end method
