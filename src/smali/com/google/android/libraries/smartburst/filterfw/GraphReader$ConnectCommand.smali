.class Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;
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
    name = "ConnectCommand"
.end annotation


# instance fields
.field private mSourceFilter:Ljava/lang/String;

.field private mSourcePort:Ljava/lang/String;

.field private mTargetFilter:Ljava/lang/String;

.field private mTargetPort:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;->mSourceFilter:Ljava/lang/String;

    .line 624
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;->mSourcePort:Ljava/lang/String;

    .line 625
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;->mTargetFilter:Ljava/lang/String;

    .line 626
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;->mTargetPort:Ljava/lang/String;

    .line 627
    return-void
.end method


# virtual methods
.method public compileToJava(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;)V
    .locals 4

    .prologue
    .line 636
    const-string v0, "builder.connect(%s, \"%s\", %s, \"%s\");"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;->mSourceFilter:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;->mSourcePort:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;->mTargetFilter:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;->mTargetPort:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->addBuildCommand(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public execute(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;)V
    .locals 5

    .prologue
    .line 631
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->getBuilder()Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;->mSourceFilter:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;->mSourcePort:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;->mTargetFilter:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;->mTargetPort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return-void
.end method
