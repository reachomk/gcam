.class public final Lcom/android/camera/util/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final HAS_RENDERSCRIPT:Z

.field private static INSTANCE:Lcom/android/camera/util/ApiHelper;

.field private static final INSTANCE_LOCK:Ljava/lang/Object;


# instance fields
.field private final deviceHelper:Lcom/android/camera/util/DeviceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const-string v0, "x86"

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_RENDERSCRIPT:Z

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/util/ApiHelper;->INSTANCE:Lcom/android/camera/util/ApiHelper;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/util/ApiHelper;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/camera/util/DeviceHelper;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    .line 57
    return-void
.end method

.method public static instance()Lcom/android/camera/util/ApiHelper;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    sget-object v1, Lcom/android/camera/util/ApiHelper;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/android/camera/util/ApiHelper;->INSTANCE:Lcom/android/camera/util/ApiHelper;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/camera/util/ApiHelper;

    .line 1045
    new-instance v2, Lcom/android/camera/util/DeviceHelper;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1120
    const-string v5, "6eKnTFnyFNI0ffj3mQvvlcmDe2KV"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1126
    invoke-static {}, Lcom/google/common/hash/Hashing;->sha1()Lcom/google/common/hash/HashFunction;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/common/hash/HashFunction;->hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v3

    .line 1129
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v4

    .line 1143
    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v4, v3, v5, v6}, Lcom/google/common/io/BaseEncoding;->encode([BII)Ljava/lang/String;

    move-result-object v3

    .line 1045
    invoke-direct {v2, v3}, Lcom/android/camera/util/DeviceHelper;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-direct {v0, v2}, Lcom/android/camera/util/ApiHelper;-><init>(Lcom/android/camera/util/DeviceHelper;)V

    sput-object v0, Lcom/android/camera/util/ApiHelper;->INSTANCE:Lcom/android/camera/util/ApiHelper;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object v0, Lcom/android/camera/util/ApiHelper;->INSTANCE:Lcom/android/camera/util/ApiHelper;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isLMr1OrHigher()Z
    .locals 2

    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLOrHigher()Z
    .locals 2

    .prologue
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMOrHigher()Z
    .locals 2

    .prologue
    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNOrHigher()Z
    .locals 2

    .prologue
    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRenderscriptEnabled()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_RENDERSCRIPT:Z

    return v0
.end method


# virtual methods
.method public final isNexus5()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isNexus5()Z

    move-result v0

    return v0
.end method

.method public final isNexus5X()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isNexus5X()Z

    move-result v0

    return v0
.end method

.method public final isNexus6()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isNexus6()Z

    move-result v0

    return v0
.end method

.method public final isNexus6P()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isNexus6P()Z

    move-result v0

    return v0
.end method

.method public final isNexus9()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isNexus9()Z

    move-result v0

    return v0
.end method

.method public final isNexusMMR1CapableDevice()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isNexus5()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    .line 144
    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isNexus5X()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    .line 145
    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isNexus6()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    .line 146
    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isNexus6P()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    .line 147
    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isNexus9()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 143
    goto :goto_0
.end method

.method public final isNexusMMR1OrHigher()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 155
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isNOrHigher()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/camera/util/ApiHelper;->isNexusMMR1CapableDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isMOrHigher()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "MD"

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "MM"

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const v2, 0x237711

    if-lt v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 162
    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final isNexusMarlin()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isNexusMarlin()Z

    move-result v0

    return v0
.end method

.method public final isNexusSailfish()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isNexusSailfish()Z

    move-result v0

    return v0
.end method

.method public final isPixelC()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isPixelC()Z

    move-result v0

    return v0
.end method

.method public final isTablet(Landroid/content/res/Resources;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 221
    .line 2184
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-le v2, v4, :cond_2

    move v2, v1

    .line 221
    :goto_0
    if-nez v2, :cond_0

    .line 2193
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 2194
    iget v3, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    if-gt v3, v4, :cond_3

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_3

    move v2, v1

    .line 221
    :goto_1
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    .line 2184
    goto :goto_0

    :cond_3
    move v2, v0

    .line 2194
    goto :goto_1
.end method

.method public final isVideoStabilizationAllowed()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/util/ApiHelper;->deviceHelper:Lcom/android/camera/util/DeviceHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/DeviceHelper;->isNexus9()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final sanitizeExifModelMake(Lcom/android/camera/exif/ExifInterface;)V
    .locals 0

    .prologue
    .line 203
    .line 204
    return-void
.end method
