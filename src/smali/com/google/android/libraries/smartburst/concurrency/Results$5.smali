.class final Lcom/google/android/libraries/smartburst/concurrency/Results$5;
.super Ljava/lang/Object;
.source "Results.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/concurrency/Results;->mapEach(Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/concurrency/ResultFunction",
        "<",
        "Ljava/lang/Iterable",
        "<TI;>;",
        "Ljava/util/List",
        "<TO;>;>;"
    }
.end annotation


# instance fields
.field private synthetic val$function:Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/concurrency/Results$5;->val$function:Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 526
    check-cast p1, Ljava/lang/Iterable;

    .line 1529
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/Results$5;->val$function:Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;

    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->forEach(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 526
    return-object v0
.end method
