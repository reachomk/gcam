.class public final Landroid/support/v8/renderscript/ScriptGroup$Closure;
.super Landroid/support/v8/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Closure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Closure"


# instance fields
.field private mArgs:[Ljava/lang/Object;

.field private mBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFP:Landroid/support/v8/renderscript/FieldPacker;

.field private mGlobalFuture:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            "Landroid/support/v8/renderscript/ScriptGroup$Future;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnFuture:Landroid/support/v8/renderscript/ScriptGroup$Future;

.field private mReturnValue:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 122
    return-void
.end method

.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v8/renderscript/RenderScript;",
            "Landroid/support/v8/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "ScriptGroup2 not supported in this API level"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    invoke-static {p3}, Landroid/support/v8/renderscript/FieldPacker;->createFromArray([Ljava/lang/Object;)Landroid/support/v8/renderscript/FieldPacker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mFP:Landroid/support/v8/renderscript/FieldPacker;

    .line 176
    iput-object p3, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 177
    iput-object p4, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 180
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    .line 182
    new-array v9, v0, [J

    .line 183
    new-array v5, v0, [J

    .line 184
    new-array v6, v0, [I

    .line 185
    new-array v7, v0, [J

    .line 186
    new-array v8, v0, [J

    .line 188
    const/4 v2, 0x0

    .line 189
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v8/renderscript/Script$FieldID;

    .line 192
    invoke-virtual {v3, p1}, Landroid/support/v8/renderscript/Script$FieldID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    aput-wide v0, v9, v2

    move-object v0, p0

    move-object v1, p1

    .line 193
    invoke-direct/range {v0 .. v8}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 196
    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p2, p1}, Landroid/support/v8/renderscript/Script$InvokeID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mFP:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    move-object v0, p1

    move-object v4, v9

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nInvokeClosureCreate(J[B[J[J[I)J

    move-result-wide v0

    .line 201
    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->setID(J)V

    .line 202
    return-void
.end method

.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v8/renderscript/RenderScript;",
            "Landroid/support/v8/renderscript/Script$KernelID;",
            "Landroid/support/v8/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v3, v1}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 128
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "ScriptGroup2 not supported in this API level"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_0
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 133
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/support/v8/renderscript/Allocation;

    .line 134
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 137
    move-object/from16 v0, p4

    array-length v2, v0

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 139
    new-array v0, v2, [J

    move-object/from16 v16, v0

    .line 140
    new-array v7, v2, [J

    .line 141
    new-array v8, v2, [I

    .line 142
    new-array v9, v2, [J

    .line 143
    new-array v10, v2, [J

    .line 146
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v4, v2, :cond_1

    .line 147
    const-wide/16 v2, 0x0

    aput-wide v2, v16, v4

    .line 148
    const/4 v5, 0x0

    aget-object v6, p4, v4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 153
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v8/renderscript/Script$FieldID;

    .line 154
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/support/v8/renderscript/Script$FieldID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    aput-wide v2, v16, v4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 155
    invoke-direct/range {v2 .. v10}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 157
    add-int/lit8 v4, v4, 0x1

    .line 158
    goto :goto_1

    .line 160
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Script$KernelID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v14

    move-object/from16 v11, p1

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    invoke-virtual/range {v11 .. v20}, Landroid/support/v8/renderscript/RenderScript;->nClosureCreate(JJ[J[J[I[J[J)J

    move-result-wide v2

    .line 163
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->setID(J)V

    .line 164
    return-void
.end method

.method private final retrieveValueAndDependenceInfo(Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 210
    instance-of v0, p4, Landroid/support/v8/renderscript/ScriptGroup$Future;

    if-eqz v0, :cond_1

    .line 211
    check-cast p4, Landroid/support/v8/renderscript/ScriptGroup$Future;

    .line 212
    invoke-virtual {p4}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 213
    invoke-virtual {p4}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getClosure()Landroid/support/v8/renderscript/ScriptGroup$Closure;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    aput-wide v0, p7, p2

    .line 214
    invoke-virtual {p4}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getFieldID()Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Script$FieldID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    :goto_0
    aput-wide v0, p8, p2

    move-object v0, v4

    .line 221
    :goto_1
    instance-of v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Input;

    if-eqz v1, :cond_3

    .line 222
    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$Input;

    .line 223
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    array-length v1, v1

    if-ge p2, v1, :cond_2

    .line 224
    invoke-virtual {v0, p0, p2}, Landroid/support/v8/renderscript/ScriptGroup$Input;->addReference(Landroid/support/v8/renderscript/ScriptGroup$Closure;I)V

    .line 228
    :goto_2
    aput-wide v2, p5, p2

    .line 229
    const/4 v0, 0x0

    aput v0, p6, p2

    .line 235
    :goto_3
    return-void

    :cond_0
    move-wide v0, v2

    .line 215
    goto :goto_0

    .line 217
    :cond_1
    aput-wide v2, p7, p2

    .line 218
    aput-wide v2, p8, p2

    move-object v0, p4

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {v0, p0, p3}, Landroid/support/v8/renderscript/ScriptGroup$Input;->addReference(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;)V

    goto :goto_2

    .line 231
    :cond_3
    new-instance v1, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;

    invoke-direct {v1, p1, v0}, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 232
    iget-wide v2, v1, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    aput-wide v2, p5, p2

    .line 233
    iget v0, v1, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    aput v0, p6, p2

    goto :goto_3
.end method


# virtual methods
.method public final getGlobal(Landroid/support/v8/renderscript/Script$FieldID;)Landroid/support/v8/renderscript/ScriptGroup$Future;
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$Future;

    .line 261
    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    instance-of v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Future;

    if-eqz v1, :cond_0

    .line 268
    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$Future;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 270
    :cond_0
    new-instance v1, Landroid/support/v8/renderscript/ScriptGroup$Future;

    invoke-direct {v1, p0, p1, v0}, Landroid/support/v8/renderscript/ScriptGroup$Future;-><init>(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 274
    :cond_1
    return-object v0
.end method

.method public final getReturn()Landroid/support/v8/renderscript/ScriptGroup$Future;
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/support/v8/renderscript/ScriptGroup$Future;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Future;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/support/v8/renderscript/Allocation;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v8/renderscript/ScriptGroup$Future;-><init>(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/support/v8/renderscript/ScriptGroup$Future;

    .line 248
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/support/v8/renderscript/ScriptGroup$Future;

    return-object v0
.end method

.method final setArg(ILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 278
    instance-of v0, p2, Landroid/support/v8/renderscript/ScriptGroup$Future;

    if-eqz v0, :cond_0

    .line 279
    check-cast p2, Landroid/support/v8/renderscript/ScriptGroup$Future;

    invoke-virtual {p2}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 282
    new-instance v3, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v3, v0, p2}, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    iget-wide v4, v3, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v6, v3, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nClosureSetArg(JIJI)V

    .line 284
    return-void
.end method

.method final setGlobal(Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 287
    instance-of v0, p2, Landroid/support/v8/renderscript/ScriptGroup$Future;

    if-eqz v0, :cond_0

    .line 288
    check-cast p2, Landroid/support/v8/renderscript/ScriptGroup$Future;

    invoke-virtual {p2}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 290
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v1, p2}, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 292
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/support/v8/renderscript/Script$FieldID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    iget-wide v6, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v8, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nClosureSetGlobal(JJJI)V

    .line 293
    return-void
.end method
