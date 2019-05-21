.class public final Lcom/android/camera/debug/StrictModePolicy;
.super Ljava/lang/Object;
.source "StrictModePolicy.java"


# static fields
.field private static STRICT_VM_MODE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T2MSPQ6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private applied:Z

.field private final flags:Lcom/android/camera/util/flags/Flags;

.field private final logger:Lcom/android/camera/debug/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-string v0, "StrictModePolicy"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/debug/StrictModePolicy;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/android/camera/util/flags/CameraFlag;

    const-string v1, "camera.strict_vm"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/flags/CameraFlag;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lcom/android/camera/debug/StrictModePolicy;->STRICT_VM_MODE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T2MSPQ6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/util/flags/Flags;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/debug/StrictModePolicy;->applied:Z

    .line 24
    iput-object p1, p0, Lcom/android/camera/debug/StrictModePolicy;->flags:Lcom/android/camera/util/flags/Flags;

    .line 25
    sget-object v0, Lcom/android/camera/debug/StrictModePolicy;->TAG:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/debug/StrictModePolicy;->logger:Lcom/android/camera/debug/Logger;

    .line 26
    return-void
.end method
