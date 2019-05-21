.class public final Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;
.super Ljava/lang/Object;
.source "ProgramStateContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/utils/ProgramStateContext$ContextStack;
    }
.end annotation


# static fields
.field private static final EMPTY_CONTEXT:Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;


# instance fields
.field private final mCreationStackTrace:[Ljava/lang/StackTraceElement;

.field private final mDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    const-string v1, ""

    .line 23
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;-><init>(Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->EMPTY_CONTEXT:Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    .line 22
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->mDescription:Ljava/lang/String;

    .line 30
    const-class v0, Ljava/lang/StackTraceElement;

    invoke-static {p2, v0}, Lcom/google/common/collect/Serialization;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->mCreationStackTrace:[Ljava/lang/StackTraceElement;

    .line 31
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Lcom/google/android/libraries/smartburst/debug/DebugProperties;->isDebugTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 45
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    .line 46
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    array-length v1, v1

    invoke-interface {v2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->EMPTY_CONTEXT:Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;

    goto :goto_0
.end method


# virtual methods
.method public final asThrowable()Ljava/lang/Throwable;
    .locals 3

    .prologue
    .line 68
    new-instance v1, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext$ContextStack;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->mDescription:Ljava/lang/String;

    .line 1058
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->mCreationStackTrace:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 68
    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext$ContextStack;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    return-object v1
.end method
