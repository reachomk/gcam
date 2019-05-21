.class Lcom/android/camera/stats/SessionStatsCollector$Singleton;
.super Ljava/lang/Object;
.source "SessionStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/stats/SessionStatsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/stats/SessionStatsCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/android/camera/stats/SessionStatsCollector;

    invoke-direct {v0}, Lcom/android/camera/stats/SessionStatsCollector;-><init>()V

    sput-object v0, Lcom/android/camera/stats/SessionStatsCollector$Singleton;->INSTANCE:Lcom/android/camera/stats/SessionStatsCollector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/stats/SessionStatsCollector;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/camera/stats/SessionStatsCollector$Singleton;->INSTANCE:Lcom/android/camera/stats/SessionStatsCollector;

    return-object v0
.end method
