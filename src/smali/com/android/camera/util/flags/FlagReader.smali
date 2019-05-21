.class public final Lcom/android/camera/util/flags/FlagReader;
.super Ljava/lang/Object;
.source "FlagReader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final adbCameraFlagSource:Lcom/android/camera/util/flags/AdbFlagSource;

.field private final logger:Lcom/android/camera/debug/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "Flagutils"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/flags/FlagReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/util/flags/AdbFlagSource;Lcom/android/camera/util/flags/GServicesFlagSource;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/util/flags/FlagReader;->adbCameraFlagSource:Lcom/android/camera/util/flags/AdbFlagSource;

    .line 25
    sget-object v0, Lcom/android/camera/util/flags/FlagReader;->TAG:Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/flags/FlagReader;->logger:Lcom/android/camera/debug/Logger;

    .line 26
    return-void
.end method


# virtual methods
.method public final getAdbValue(Lcom/android/camera/util/flags/CameraFlag;)Z
    .locals 6

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/util/flags/FlagReader;->adbCameraFlagSource:Lcom/android/camera/util/flags/AdbFlagSource;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/flags/AdbFlagSource;->getValue(Lcom/android/camera/util/flags/CameraFlag;)Ljava/lang/String;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/android/camera/util/flags/FlagReader;->logger:Lcom/android/camera/debug/Logger;

    invoke-virtual {p1}, Lcom/android/camera/util/flags/CameraFlag;->getAdbName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "WARNING: adb override set for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Lcom/android/camera/util/flags/StringTruth;->isTrue(Ljava/lang/String;)Z

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/util/flags/CameraFlag;->getDefaultValue()Z

    move-result v0

    goto :goto_0
.end method
