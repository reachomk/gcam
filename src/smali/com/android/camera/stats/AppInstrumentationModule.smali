.class public Lcom/android/camera/stats/AppInstrumentationModule;
.super Ljava/lang/Object;
.source "AppInstrumentationModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideInstrumentation()Lcom/android/camera/stats/Instrumentation;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/android/camera/stats/Instrumentation;->instance()Lcom/android/camera/stats/Instrumentation;

    move-result-object v0

    return-object v0
.end method

.method public static provideUsageStatistics()Lcom/android/camera/stats/UsageStatistics;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    return-object v0
.end method
