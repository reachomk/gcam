.class Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter$2;
.super Ljava/lang/Object;
.source "ImageReduceFilter.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/InputPort$FrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter$2;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameReceived(Lcom/google/android/libraries/smartburst/filterfw/InputPort;Lcom/google/android/libraries/smartburst/filterfw/Frame;)V
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter$2;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter;->access$300(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter$2;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter;

    invoke-static {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter;->access$302(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter;I)I

    .line 312
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter$2;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter;->access$202(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/reduce/ImageReduceFilter;Z)Z

    .line 314
    :cond_0
    return-void
.end method
