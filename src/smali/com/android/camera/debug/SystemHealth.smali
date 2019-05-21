.class public final Lcom/android/camera/debug/SystemHealth;
.super Ljava/lang/Object;
.source "SystemHealth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/debug/SystemHealth$CpuData;,
        Lcom/android/camera/debug/SystemHealth$CpuDataListener;,
        Lcom/android/camera/debug/SystemHealth$CpuDataReader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cpuDataListener:Lcom/android/camera/debug/SystemHealth$CpuDataListener;

.field private final cpuDataReaders:[Lcom/android/camera/debug/SystemHealth$CpuDataReader;

.field private final readDataRunnable:Ljava/lang/Runnable;

.field private readDataThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "SystemHealth"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/debug/SystemHealth;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v0, v8, [Lcom/android/camera/debug/SystemHealth$CpuDataReader;

    iput-object v0, p0, Lcom/android/camera/debug/SystemHealth;->cpuDataReaders:[Lcom/android/camera/debug/SystemHealth$CpuDataReader;

    .line 24
    new-instance v0, Lcom/android/camera/debug/SystemHealth$1;

    invoke-direct {v0, p0}, Lcom/android/camera/debug/SystemHealth$1;-><init>(Lcom/android/camera/debug/SystemHealth;)V

    iput-object v0, p0, Lcom/android/camera/debug/SystemHealth;->readDataRunnable:Ljava/lang/Runnable;

    move v0, v1

    .line 32
    :goto_0
    if-ge v0, v8, :cond_0

    .line 33
    iget-object v2, p0, Lcom/android/camera/debug/SystemHealth;->cpuDataReaders:[Lcom/android/camera/debug/SystemHealth$CpuDataReader;

    new-instance v3, Lcom/android/camera/debug/SystemHealth$CpuDataReader;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/system/cpu/cpu"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0xb

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v1}, Lcom/android/camera/debug/SystemHealth$CpuDataReader;-><init>(Ljava/io/File;B)V

    aput-object v3, v2, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/debug/SystemHealth;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/debug/SystemHealth;->readData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/debug/SystemHealth;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/debug/SystemHealth;->readDataRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final readData()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 81
    new-array v1, v3, [Lcom/android/camera/debug/SystemHealth$CpuData;

    .line 82
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/camera/debug/SystemHealth;->cpuDataReaders:[Lcom/android/camera/debug/SystemHealth$CpuDataReader;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/camera/debug/SystemHealth$CpuDataReader;->read()Lcom/android/camera/debug/SystemHealth$CpuData;

    move-result-object v2

    aput-object v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/camera/debug/SystemHealth;->cpuDataListener:Lcom/android/camera/debug/SystemHealth$CpuDataListener;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/camera/debug/SystemHealth;->cpuDataListener:Lcom/android/camera/debug/SystemHealth$CpuDataListener;

    invoke-interface {v0, v1}, Lcom/android/camera/debug/SystemHealth$CpuDataListener;->onNewData([Lcom/android/camera/debug/SystemHealth$CpuData;)V

    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method public final setCpuDataListener(Lcom/android/camera/debug/SystemHealth$CpuDataListener;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/debug/SystemHealth;->cpuDataListener:Lcom/android/camera/debug/SystemHealth$CpuDataListener;

    .line 42
    return-void
.end method

.method public final start()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/debug/SystemHealth;->readDataThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/android/camera/debug/SystemHealth;->TAG:Ljava/lang/String;

    const-string v1, "Thread already running"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/android/camera/debug/SystemHealth$2;

    const-string v1, "SystemHealth"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/debug/SystemHealth$2;-><init>(Lcom/android/camera/debug/SystemHealth;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/debug/SystemHealth;->readDataThread:Ljava/lang/Thread;

    .line 66
    iget-object v0, p0, Lcom/android/camera/debug/SystemHealth;->readDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/debug/SystemHealth;->readDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/debug/SystemHealth;->readDataThread:Ljava/lang/Thread;

    .line 75
    return-void
.end method
