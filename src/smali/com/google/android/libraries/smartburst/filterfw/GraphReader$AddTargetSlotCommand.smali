.class Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddTargetSlotCommand;
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
    name = "AddTargetSlotCommand"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mSlotName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddTargetSlotCommand;->mName:Ljava/lang/String;

    .line 538
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddTargetSlotCommand;->mSlotName:Ljava/lang/String;

    .line 539
    return-void
.end method


# virtual methods
.method public compileToJava(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;)V
    .locals 4

    .prologue
    .line 548
    const-string v0, "builder.addFrameSlotTarget(\"%s\", \"%s\")"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddTargetSlotCommand;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddTargetSlotCommand;->mSlotName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->addBuildCommand(Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public execute(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;)V
    .locals 3

    .prologue
    .line 543
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->getBuilder()Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddTargetSlotCommand;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddTargetSlotCommand;->mSlotName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFrameSlotTarget(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/FrameSlotTarget;

    .line 544
    return-void
.end method
