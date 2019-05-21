.class public final Lcom/android/camera/debug/performance/MetricBuilderModule;
.super Ljava/lang/Object;
.source "MetricBuilderModule.java"


# static fields
.field private static final METRIC_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T36ISR8CPNMUP26DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lcom/android/camera/util/flags/CameraFlag;

    const-string v1, "camera.debug.metric"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/flags/CameraFlag;-><init>(Ljava/lang/String;S)V

    sput-object v0, Lcom/android/camera/debug/performance/MetricBuilderModule;->METRIC_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T36ISR8CPNMUP26DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideMetricBuilder(Lcom/android/camera/util/flags/Flags;)Lcom/android/camera/debug/performance/MetricBuilder;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/android/camera/debug/performance/MetricBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/performance/MetricBuilder;-><init>(Z)V

    return-object v0
.end method
