.class final Lcom/android/camera/util/flags/AdbFlagSource;
.super Ljava/lang/Object;
.source "AdbFlagSource.java"


# instance fields
.field private final systemProperties:Lcom/android/camera/util/SystemProperties;


# direct methods
.method constructor <init>(Lcom/android/camera/util/SystemProperties;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/android/camera/util/flags/AdbFlagSource;->systemProperties:Lcom/android/camera/util/SystemProperties;

    .line 23
    return-void
.end method


# virtual methods
.method public final getValue(Lcom/android/camera/util/flags/CameraFlag;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/android/camera/util/flags/AdbFlagSource;->systemProperties:Lcom/android/camera/util/SystemProperties;

    invoke-virtual {p1}, Lcom/android/camera/util/flags/CameraFlag;->getAdbName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/util/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/util/flags/AdbFlagSource;->systemProperties:Lcom/android/camera/util/SystemProperties;

    const-string v0, "persist."

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/util/flags/CameraFlag;->getAdbName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0, v4}, Lcom/android/camera/util/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
