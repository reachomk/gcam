.class final Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;
.super Ljava/lang/Object;
.source "EvenMoreExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmediateExecutor"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;-><init>()V

    sput-object v0, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;->INSTANCE:Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;->INSTANCE:Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors$ImmediateExecutor;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 107
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 108
    return-void
.end method
