.class Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$2;
.super Ljava/lang/Object;
.source "ExecutorFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->shutdownNow()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$2;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter$2;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;->access$100(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ExecutorFilter;)V

    .line 126
    return-void
.end method
