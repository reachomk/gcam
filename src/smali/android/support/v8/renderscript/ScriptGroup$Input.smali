.class public final Landroid/support/v8/renderscript/ScriptGroup$Input;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation


# instance fields
.field mArgIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/support/v8/renderscript/ScriptGroup$Closure;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mFieldID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/support/v8/renderscript/ScriptGroup$Closure;",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            ">;>;"
        }
    .end annotation
.end field

.field mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mFieldID:Ljava/util/List;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mArgIndex:Ljava/util/List;

    .line 367
    return-void
.end method


# virtual methods
.method final addReference(Landroid/support/v8/renderscript/ScriptGroup$Closure;I)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mArgIndex:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method final addReference(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mFieldID:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    return-void
.end method

.method final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method final set(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 378
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mValue:Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mArgIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 380
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$Closure;

    .line 381
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 382
    invoke-virtual {v1, v0, p1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->setArg(ILjava/lang/Object;)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mFieldID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 385
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$Closure;

    .line 386
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/support/v8/renderscript/Script$FieldID;

    .line 387
    invoke-virtual {v1, v0, p1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->setGlobal(Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V

    goto :goto_1

    .line 389
    :cond_1
    return-void
.end method
