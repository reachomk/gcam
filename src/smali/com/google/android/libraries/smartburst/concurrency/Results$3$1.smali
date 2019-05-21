.class final Lcom/google/android/libraries/smartburst/concurrency/Results$3$1;
.super Ljava/lang/Object;
.source "Results.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/concurrency/Results$3;->apply(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/utils/Function",
        "<TB;",
        "Landroid/util/Pair",
        "<TA;TB;>;>;"
    }
.end annotation


# instance fields
.field private synthetic val$valueA:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/concurrency/Results$3$1;->val$valueA:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 468
    .line 1471
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/Results$3$1;->val$valueA:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 468
    return-object v0
.end method
