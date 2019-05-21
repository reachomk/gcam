.class final Lcom/google/android/libraries/smartburst/utils/ProgramStateContext$ContextStack;
.super Ljava/lang/Throwable;
.source "ProgramStateContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContextStack"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 2

    .prologue
    .line 73
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext$ContextStack;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 75
    return-void
.end method
