.class Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddLibraryCommand;
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
    name = "AddLibraryCommand"
.end annotation


# instance fields
.field private mLibraryName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddLibraryCommand;->mLibraryName:Ljava/lang/String;

    .line 386
    return-void
.end method


# virtual methods
.method public compileToJava(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;)V
    .locals 2

    .prologue
    .line 395
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot compile library additions"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddLibraryCommand;->mLibraryName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterFactory;->addFilterLibrary(Ljava/lang/String;)V

    .line 391
    return-void
.end method
