.class Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportPackageCommand;
.super Ljava/lang/Object;
.source "GraphReader.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/GraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImportPackageCommand"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportPackageCommand;->mPackageName:Ljava/lang/String;

    .line 364
    return-void
.end method


# virtual methods
.method public compileToJava(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;)V
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->imports()Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportPackageCommand;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;->add(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public execute(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;)V
    .locals 2

    .prologue
    .line 369
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->getFactory()Lcom/google/android/libraries/smartburst/filterfw/FilterFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportPackageCommand;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterFactory;->addPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
