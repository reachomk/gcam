.class final Lcom/google/android/libraries/smartburst/training/EvalUtil$15;
.super Ljava/lang/Object;
.source "EvalUtil.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/training/EvalUtil;->injectPostProcessLogging(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper",
        "<",
        "Lcom/google/android/libraries/smartburst/storage/MetadataStore;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$15;->val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic wrap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 265
    check-cast p1, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 2048
    new-instance v0, Lcom/google/android/libraries/smartburst/training/MetadataSerializer$1;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/training/MetadataSerializer$1;-><init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;)V

    .line 1270
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$15;->val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    const-string v2, "metadata.txt"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->addLogWriter(Ljava/lang/String;Lcom/google/android/libraries/smartburst/training/LogWriter;)V

    .line 265
    return-object p1
.end method
