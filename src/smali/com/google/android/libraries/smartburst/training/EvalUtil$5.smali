.class final Lcom/google/android/libraries/smartburst/training/EvalUtil$5;
.super Ljava/lang/Object;
.source "EvalUtil.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/training/EvalUtil;->injectCaptureLogging(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/integration/Instantiator",
        "<",
        "Lcom/google/android/libraries/smartburst/media/SummaryBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$5;->val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 130
    .line 1133
    const-class v0, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1133
    check-cast v0, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    .line 3027
    new-instance v1, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer$1;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer$1;-><init>(Lcom/google/android/libraries/smartburst/media/SummaryBuilder;)V

    .line 1136
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$5;->val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    const-string v3, "selected_frames.csv"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->addLogWriter(Ljava/lang/String;Lcom/google/android/libraries/smartburst/training/LogWriter;)V

    .line 130
    return-object v0
.end method
