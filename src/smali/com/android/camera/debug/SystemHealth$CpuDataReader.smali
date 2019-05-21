.class final Lcom/android/camera/debug/SystemHealth$CpuDataReader;
.super Ljava/lang/Object;
.source "SystemHealth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/SystemHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CpuDataReader"
.end annotation


# instance fields
.field private final basePath:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/camera/debug/SystemHealth$CpuDataReader;->basePath:Ljava/io/File;

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;B)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/debug/SystemHealth$CpuDataReader;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private static readAsInt(Ljava/io/File;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 118
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/common/io/Files;->readFirstLine(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 120
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method final read()Lcom/android/camera/debug/SystemHealth$CpuData;
    .locals 5

    .prologue
    .line 106
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/debug/SystemHealth$CpuDataReader;->basePath:Ljava/io/File;

    const-string v2, "cpufreq/scaling_cur_freq"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/debug/SystemHealth$CpuDataReader;->readAsInt(Ljava/io/File;)I

    move-result v0

    .line 107
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/debug/SystemHealth$CpuDataReader;->basePath:Ljava/io/File;

    const-string v3, "cpufreq/cpuinfo_max_freq"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/debug/SystemHealth$CpuDataReader;->readAsInt(Ljava/io/File;)I

    move-result v1

    .line 108
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/camera/debug/SystemHealth$CpuDataReader;->basePath:Ljava/io/File;

    const-string v4, "cpufreq/cpuinfo_min_freq"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/camera/debug/SystemHealth$CpuDataReader;->readAsInt(Ljava/io/File;)I

    move-result v2

    .line 109
    new-instance v3, Lcom/android/camera/debug/SystemHealth$CpuData;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/debug/SystemHealth$CpuData;-><init>(III)V

    return-object v3
.end method
