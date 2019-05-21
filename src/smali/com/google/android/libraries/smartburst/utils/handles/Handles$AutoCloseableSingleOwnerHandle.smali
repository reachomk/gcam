.class final Lcom/google/android/libraries/smartburst/utils/handles/Handles$AutoCloseableSingleOwnerHandle;
.super Lcom/google/android/libraries/smartburst/utils/handles/AbstractSingleOwnerHandle;
.source "Handles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/utils/handles/Handles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AutoCloseableSingleOwnerHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/AutoCloseable;",
        ">",
        "Lcom/google/android/libraries/smartburst/utils/handles/AbstractSingleOwnerHandle",
        "<TT;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/AutoCloseable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/utils/handles/AbstractSingleOwnerHandle;-><init>(Ljava/lang/Object;)V

    .line 248
    return-void
.end method


# virtual methods
.method protected final synthetic dispose(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 239
    check-cast p1, Ljava/lang/AutoCloseable;

    .line 1252
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 239
    return-void
.end method
